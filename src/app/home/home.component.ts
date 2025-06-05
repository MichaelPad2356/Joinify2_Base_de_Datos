import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { RouterModule } from '@angular/router';

@Component({
  selector: 'app-home',
  imports: [RouterModule],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent implements OnInit {
  movies: any[] = []; // Array para almacenar las películas
  apiKey: string = '5c208ff4ecedc410685c70b86d4abcd9'; 
  apiUrl: string = 'https://api.themoviedb.org/3/movie/popular'; // Endpoint de TMDB

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
    this.fetchMovies();
  }

  fetchMovies(): void {
    this.http
      .get<any>(`${this.apiUrl}?api_key=${this.apiKey}&language=es-MX&page=1`)
      .subscribe({
        next: (data) => {
          this.movies = data.results;
          console.log(this.movies); // Verifica los resultados en la consola
        },
        error: (error) => {
          console.error('Error al obtener las películas:', error);
        },
      });
  }
}