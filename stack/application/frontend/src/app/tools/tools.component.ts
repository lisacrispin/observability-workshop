import {Component} from '@angular/core';
import {environment} from "../../environments/environment";

@Component({
  selector: 'app-tools',
  templateUrl: './tools.component.html',
  styleUrls: ['./tools.component.css']
})
export class ToolsComponent {

  constructor() {
  }

  getToolURL(port: string) {
    return "http://" + window.location.hostname + port
  }

  environment = environment;
}
