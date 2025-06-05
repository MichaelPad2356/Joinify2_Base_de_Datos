import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { AboutComponent } from './about/about.component';
import { FeaturesComponent } from './features/features.component';
import { ContactComponent } from './contact/contact.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { Component } from '@angular/core';
import { CreaciongrupoComponent } from './creaciongrupo/creaciongrupo.component';
import { MisGruposComponent } from './misgrupos/misgrupos.component';
import { UnirGrupoComponent } from './unirgrupo/unirgrupo.component';

export const routes: Routes = [
    {path: '', redirectTo: '/home', pathMatch: 'full'},
    { path: 'home', component: HomeComponent },
    { path: 'about', component: AboutComponent },
    { path: 'features', component: FeaturesComponent},
    { path: 'contact', component: ContactComponent },
    { path: 'login', component: LoginComponent},
    { path: 'register', component: RegisterComponent},
    { path: 'crear-grupo', component: CreaciongrupoComponent},
    { path: 'mis-grupos', component: MisGruposComponent},
    { path: 'unir-grupo', component: UnirGrupoComponent}
];
