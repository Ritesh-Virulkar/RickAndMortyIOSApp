# Documentation and Learnings for R&M app

## Basic Setup

    - Since this app consists of UItabBarController, we deleted the initial viewController and instead created a main housing controller 'TabBarController'. Accordingly made changes in the 'SceneDelegate' file. Basically settingup the 'window' in the scene method and made the 'TabBarController' as the root controller of the window
    
    - Making the proper folder structure
     *Controllers
     *Models 
     *Views
     *ViewModels
     *Resources
     *Managers
     *APIClient
     
    - Since the app has mainly 4 windows(from api client) 'Characters', 'Locations', 'Episode', 'Settings' therefore created 4 main viewControllers accordingly
    
    - Now setup these tabs in the the 'TabBarController'
    
    ### Now from the api we have created different models according using structs, checks 'Models' folder for reference
    
    Now, since the models are setup, we go for the creation of 'Service', 'Request', 'Endpoint' for api integration. These files are put inside 'APIClient' group.
 
## 'Service', 'Request', 'Endpoint'
    
    ### Endpoint
    - firstly we created 'Endpoint' enum of type 'String' as the endpoint wont change
    
    ### Request
    - setup baseURL, endpoint, pathComponents, queryParamerter(URLQueryItem), httpMethods. should always return 'URLRequest'
    
    ### Service 
    - created singleton shared instance and create 'execute' as main method for interaction from apis
    
    After setting these 3 things, we go on creating individual controllers for each scene.
    
## Characters
    
    ### calling hierarchy
    CharacterViewController -> CharacterListView -> CharcterListViewViewModel
    
    *CharacterViewController
    - main view for presenting
    *CharacterListView
    - for showing spinners, collectionView and different components
    *CharacterListView
    - for getting the data from api(using 'execute' method) and for delegate and datasources which are coming from Views
 
 
    
    
 

