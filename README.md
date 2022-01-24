# Tools - SASS

David Williamson @ Varilink Computing Ltd

------

A Docker image that implements the sass command to enable the customisation of front-end frameworks via scss files.

## Image Build

```bash
docker build --tag=varilink/sass .
```

## Usage

Implemented in projects that use it for specific purposes defined as Docker Compose services.

For example: 

```yaml
sass:

  image: varilink/sass

  command: [ "/scss/custom.scss:/css/bootstrap.css" ]

  network_mode: none

  volumes:
    - ./node_modules:/node_modules:ro
    - ./fobv-wordpress/theme/assets/scss:/scss
    - ./fobv-wordpress/theme/assets/css:/css
```



