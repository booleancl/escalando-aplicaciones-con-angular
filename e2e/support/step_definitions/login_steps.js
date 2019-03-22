import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

beforeEach(() => {
    cy.server();
    cy.fixture('groups.json').as('groupsJSON');
    cy.fixture('user.json').as('userJSON');
    cy.route('GET', '/auth-service/v1/groups', '@groupsJSON');
    cy.route('POST', '/auth-service/v1/login', '@userJSON')
});

Given('ingreso a la página de autenticación', () => {
    cy.visit('/');
});

When('hago clic en el enlace de postulación a la beca', () => {
    cy.get('.login-page__scholarship-link').click()
})

Then('soy redirigido a la página de postulación', () => {
    cy.url().should('contains','/scholarship-form');    
})



Given('ingreso a la página de autenticación', () => {
    cy.visit('/');
});

When('escribo en el input de email', () => {
    cy.get('input[name="email"]').type('MiNombre@test.org')
})