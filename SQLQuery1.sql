Select *
From PortfolioProject..CovidDeaths
order by 3,4

Select *
From PortfolioProject..CovidVaccinations
order by 3,4

--Select data that we're going to use 
Select continent, date, total_cases, new_cases,total_deaths, population
From PortfolioProject..CovidDeaths
order by 1,2

--Looking at Total cases vrs Total Deaths
--likelihood of death if you contract covid in your country
Select continent, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as Deathpercentage
From PortfolioProject..CovidDeaths
where continent like '%Portugal%'
order by 1,2

--looking at the total cases vrs the popluation
--what population got covid
Select continent, date, population, total_cases, (total_cases/population)*100 as Deathpercentage
From PortfolioProject..CovidDeaths
--where location like '%Portugal%' 
order by 1,2

--Looking at countries with highest infection rate compared to population
Select continent, population, MAX(total_cases) as HighestInfectionCount, 
MAX(total_cases/population)*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
Group by continent, population
order by PercentPopulationInfected DESC

--looking at countries with highest death records per population
Select continent, population, MAX(cast(total_deaths as int)) as HighestDeathCount, 
MAX(total_cases/population)*100 as PercentDeathPerPopulation
From PortfolioProject..CovidDeaths
Group by continent, population
order by PercentDeathPerPopulation DESC

--Total deaths per population
Select continent,MAX(cast(total_deaths as int)) as TotalDeath
From PortfolioProject..CovidDeaths
where continent is null
Group by continent
order by TotalDeath DESC

--Let's break thngs down by continent
Select continent,MAX(cast(total_deaths as int)) as TotalDeath
From PortfolioProject..CovidDeaths
where continent is not null
Group by continent
order by TotalDeath DESC

--Global numbers 
Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths,
SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
where continent is not null
order by 1,2


--joining the two workbooks
Select *
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
On dea.location = vac.location
and dea.date = vac.date

--looking at the total population vrs vaccinations
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,SUM(Convert(int, vac.new_vaccinations)) OVER(Partition by dea.location order by dea.location, 
dea.date) as RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
order by 2,3

--Use CTE
With PopvrsVac (Continent, location, date, population, new_vaccinations, 
RollingPeopleVaccinated)
as
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,SUM(Convert(int, vac.new_vaccinations)) OVER(Partition by dea.location order by dea.location, 
dea.date) as RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3
)
Select *, (RollingPeopleVaccinated/Population)*100
From PopvrsVac

--TEMP TABLE
DROP Table if exists #PercentPopulationVaccinated
Create Table  #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
New_vaccinations numeric,
RollingPeopleVaccinated numeric
)

Insert into  #PercentPopulationVaccinated
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,SUM(Convert(int, vac.new_vaccinations)) OVER(Partition by dea.location order by dea.location, 
dea.date) as RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3

Select *, (RollingPeopleVaccinated/Population)*100
From #PercentPopulationVaccinated


--Creating view to atore data for later visualization
Create view PercentPopulationVaccinated as
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,SUM(Convert(int, vac.new_vaccinations)) OVER(Partition by dea.location order by dea.location, 
dea.date) as RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3

Select *
From PercentPopulationVaccinated