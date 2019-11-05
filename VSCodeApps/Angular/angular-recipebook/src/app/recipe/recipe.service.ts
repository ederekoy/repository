import { Recipe } from './recipe.model';
import { EventEmitter } from '@angular/core';
import { Ingredient } from '../shared/ingredient.model';

export class RecipeService {
    recipeSelected = new EventEmitter<Recipe>();
    private recipes: Recipe[] = [
        new Recipe('Steak', 'test',
            'https://www.arifoglu.com/Data/Blog/1/119.jpg',
            [new Ingredient('Patates', 10),
            new Ingredient('Soğan', 2)]),
        new Recipe('Kuru Pilav', 'Cook',
            'https://www.arifoglu.com/Data/Blog/1/119.jpg',
            [new Ingredient('Domates', 10),
            new Ingredient('Patlıcan', 2)]),
    ];

    getRecipes() {
        return this.recipes.slice();
    }
}