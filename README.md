# WoofAds

this is used to display free medium content with ads. It loads the requested site via a query parameter (e.g., `?site=www.google.com`) in an iframe, and surrounds it with Google Ads.

## Setup & Installation

To install dependencies, you can run the provided setup script:

```bash
./setup.sh
```

Alternatively, you can manually install the required packages:

```bash
npm install -g @angular/cli
npm install
```

## Development server

To start a local development server, run:

```bash
ng serve
```
Or:
```bash
npm run start
```

Once the server is running, open your browser and navigate to `http://localhost:4200/`. The application will automatically reload whenever you modify any of the source files.

## Building (Static Site Generation)

To build the project as a fully static front-end site (no backend needed), run:

```bash
ng build
```

This will compile your project and store the static build artifacts in the `dist/woof-ads/` directory. You can host this directory on any static file hosting service (e.g., GitHub Pages, Vercel, Netlify, Apache, Nginx). By default, the production build optimizes your application for performance and speed.

## Running unit tests

To execute unit tests with the test runner, use the following command:

```bash
ng test
```
