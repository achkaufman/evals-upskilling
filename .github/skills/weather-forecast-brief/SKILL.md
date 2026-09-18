---
name: weather-forecast-brief
description: Look up and summarize the current weather and short-term forecast for a requested location. Use when the user asks about today's weather, requests a forecast, or wants a weather briefing.
---

# Weather Forecast Brief

Provide a concise, useful weather briefing grounded in current forecast data.

## Determine the location

Use the location supplied by the user. A city and state, province, region, or country is usually sufficient.

If the user does not provide a location, ask for one. Do not infer a location from the user's identity, IP address, locale, or repository.

If a place name is ambiguous, ask the user to clarify before retrieving weather data.

## Retrieve current weather data

Use an available web or weather tool to retrieve current conditions and a forecast from a reputable source.

Prefer sources in this order:

1. The location's official national meteorological service, such as the US National Weather Service, Environment and Climate Change Canada, or the UK Met Office.
2. A reputable weather data provider that identifies the forecast location and update time.

Retrieve enough data to report:

- current conditions, when the source provides observations;
- today's high and low temperatures;
- expected precipitation;
- notable wind conditions; and
- the next two forecast periods after today.

Record the source URL, the location represented by the source, and the observation or forecast update time. Do not use search-result snippets as weather evidence.

## Write the briefing

Begin with a natural greeting that varies with the context. Then provide:

### Weather for [location]

- **Now:** Current temperature and conditions, or state that a current observation was not available.
- **Today:** Expected high and low, precipitation, and wind.
- **Coming up:** A compact summary of the next two forecast periods.
- **Practical note:** One reasonable suggestion supported by the forecast, such as carrying an umbrella, dressing for a temperature change, or planning around hazardous conditions.
- **Source:** Provider name, linked source, and its stated update time.

Use units customary for the requested location unless the user asks for specific units. Include both unit systems only when it improves clarity.

Keep the response between 100 and 180 words unless severe or hazardous weather requires additional detail.

## Stay grounded

- Base every weather claim on the retrieved source.
- Preserve uncertainty expressed by the source. Do not turn probabilities into certainties.
- Clearly distinguish current observations from forecasts.
- Do not invent missing temperatures, precipitation chances, wind speeds, alerts, timestamps, or source details.
- Do not claim that a source applies to the requested location until its location metadata confirms the match.
- Mention official watches, warnings, or advisories prominently when the source reports them. Do not infer hazards from ordinary forecast values.
- If current data cannot be retrieved, explain what failed and do not provide a guessed forecast.
