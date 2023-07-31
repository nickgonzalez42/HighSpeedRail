<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/nickgonzalez42/HighSpeedRail">
    <img src="https://ucarecdn.com/f869a732-2d12-4c7c-8238-0c5994860606/" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">High Speed Rail Ticket Platform</h3>

  <p align="center">
    A proof of concept ticket sales platform for a theoretical U.S. High Speed Rail Network
    <br />
    <a href="https://github.com/nickgonzalez42/HighSpeedRail"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="TrainHSR-env.eba-hrcbapxu.us-east-1.elasticbeanstalk.com">Try the Demo</a>
    ·
    <a href="https://github.com/nickgonzalez42/HighSpeedRail/issues">Report Bug</a>
    ·
    <a href="https://github.com/nickgonzalez42/HighSpeedRail/issues"">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<img width="300" alt="image" src="https://github.com/nickgonzalez42/HighSpeedRail/assets/41881164/3d648cba-c757-481f-9590-86a6f0e99ae8">


Starting this project, I had three interests I wanted to explore: Java + the Spring Boot environment, creating a commercial, customer-focused product, and my personal interest in advocating for alternative transportation in the U.S. to automotive reliance. The endpoint of those ideas is this project: a high speed rail ticketing platform. Users will be able to select a date as well as an origin and destination city from the station network and the site will provide a route of stations along the shortest geographic path and train times to select from. From there, users can pick their selection of trains and will be provided tickets with UIDs.

The project's data is stored in a MySQL database created using the scripts in the sql-scripts folder at the root of the project. The schema is created with the below tables:
* Stations: I manually created these from real world, pre-existing transit hubs. The most important attribute is the latitude and longitude coordinates which will be relevant to the pathfinding algo.
* Routes: For each pathway between stations, there's an inbound and outbound route.
* Trains: At database setup, a set amount of trains are generated with random dates/times, random seat availability, and random route parent IDs.
* Tickets: Initially an empty table, this will be filled with user tickets as the app is used.

Spring Boot, using Java 17, is the web framework I used to create the fullstack application; Maven was the dependency manager and the full list of dependencies can be found in the POM file. The key piece of code to look at is the pathfinding algorithm found in the Pathfinder class in the helper directory. It's an implementation of Dijkstra's algorithm using geographic coordinates as the weighted path cost.

The project is currently deployed using AWS Elastic Beanstalk and RDS.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![Springboot][Springboot.com]][Springboot-url]
* [![SpringSecurity][SpringSecurity.com]][SpringSecurity-url]
* [![AWS][AWS.com]][AWS-url]
* [![MYSQL][MYSQL.com]][MYSQL-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

You will need Java installed with version 17 or newer as well as Maven and MYSQL.

### Installation

_Below is an example of how you can instruct your audience on installing and setting up your app. This template doesn't rely on any external dependencies or services._

1. Clone the repo
   ```sh
   git clone https://github.com/nickgonzalez42/HighSpeedRail.git
   ```
2. Open the project and refresh Maven dependencies.
3. Run the SQL scripts, db-init.sql first and then generate-trains.sql as needed to populate the database with train data.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [ ] Add more selection validation at train selection
- [ ] Add user creation and user generation
- [ ] Clean up front end presentation
- [ ] Implement dynamic pricing based on availability and time to departure

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Nicholas Gonzalez - nickgonzalez42@gmail.com

Project Link: [https://github.com/nickgonzalez42/HighSpeedRail](https://github.com/nickgonzalez42/HighSpeedRail)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Thanks to the US High Speed Rail Association for their advocacy and sample map that was used for this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/nickgonzalez42/HighSpeedRail.svg?style=for-the-badge
[contributors-url]: https://github.com/nickgonzalez42/HighSpeedRail/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/nickgonzalez42/HighSpeedRail.svg?style=for-the-badge
[forks-url]: https://github.com/nickgonzalez42/HighSpeedRail/network/members
[stars-shield]: https://img.shields.io/github/stars/nickgonzalez42/HighSpeedRail.svg?style=for-the-badge
[stars-url]: https://github.com/nickgonzalez42/HighSpeedRail/stargazers
[issues-shield]: https://img.shields.io/github/issues/nickgonzalez42/HighSpeedRail.svg?style=for-the-badge
[issues-url]: https://github.com/nickgonzalez42/HighSpeedRail/issues
[license-shield]: https://img.shields.io/github/license/nickgonzalez42/HighSpeedRail.svg?style=for-the-badge
[license-url]: https://github.com/nickgonzalez42/HighSpeedRail/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/nicholasjgonzalez/
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com
[Springboot.com]: https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white
[Springboot-url]: https://spring.io/projects/spring-boot
[SpringSecurity.com]: https://img.shields.io/badge/Spring_Security-6DB33F?style=for-the-badge&logo=Spring-Security&logoColor=white
[SpringSecurity-url]: https://spring.io/projects/spring-security
[MYSQL.com]: https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white
[MYSQL-url]: https://www.mysql.com
[AWS.com]: https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white
[AWS-url]: https://aws.amazon.com
