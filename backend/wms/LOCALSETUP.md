# Local Setup

To setup the wmsSearch in your local system, clone the [Muncipal Service repository](https://github.com/egovernments/municipal-services).

## Dependencies

### Infra Dependency

- [X] Postgres DB
- [ ] Redis
- [ ] Kafka
  - [ ] Consumer
  - [ ] Producer

## Running Locally

To run the wmsSearch localy, you need to port forward below services locally

```bash
egov-workflow-v2
user-service
egov-searcher
Municipal service for which wmsSearch config is defined
```

To run the wmsSearch locally, update below listed properties in `application.properties` prior to running the project:

```ini
service.search.mapping=
```

