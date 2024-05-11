import express, { json, urlencoded, Response as ExResponse, Request as ExRequest } from 'express';
import { RegisterRoutes } from '../build/routes';
import swaggerUi from 'swagger-ui-express';
import { notFoundHandler, validationErrorHandler } from './middelware/errorHandlers';

export const app = express();

// Use body parser to read seent json payloads
app.use(
  urlencoded({
    extended: true
  })
);
app.use(json());

app.use('/docs', swaggerUi.serve, async (_req: ExRequest, res: ExResponse) => {
  return res.send(swaggerUi.generateHTML(await import('../build/swagger.json')));
});

RegisterRoutes(app);

app.use(notFoundHandler);
app.use(validationErrorHandler);
