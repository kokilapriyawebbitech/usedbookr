 <div class="vertical-menu">

                <div data-simplebar class="h-100">

                    <!-- User details -->
                

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu">
                            <li class="menu-title">Menu</li>

                            <li>
                                <a href="{{ url('/admin') }}" class="waves-effect">
                                    <i class="ri-dashboard-line"></i> 
                                    <span>Dashboard</span>
                                </a>
                            </li>
 
                
        <li>
            <a href="javascript: void(0);" class="has-arrow waves-effect">
                <i class="ri-mail-send-line"></i>
                <span>Master</span>
            </a>
            <ul class="sub-menu" aria-expanded="false">
                <li><a href="{{ route('categories.all') }}">categories</a></li>
                <li><a href="{{ route('book_conditions.all') }}">Book Conditions</a></li>
                <li><a href="{{ route('countries.all') }}">Countries</a></li>
                <li><a href="{{ route('states.all') }}">States</a></li>
                <li><a href="{{ route('cities.all') }}">City</a></li>
                <li><a href="{{ route('bindings.all') }}">Binding </a></li>
            </ul>
        </li>



        <li>
            <a href="javascript: void(0);" class="has-arrow waves-effect">
                <i class="ri-mail-send-line"></i>
                <span>Books</span>
            </a>
            <ul class="sub-menu" aria-expanded="false">
                <li><a href="{{route('authors.all')}}">Authors</a></li>
                <li><a href="{{route('books.all')}}">Books</a></li>
                



            </ul>
        </li>



        <li>
            <a href="javascript: void(0);" class="has-arrow waves-effect">
                <i class="ri-mail-send-line"></i>
                <span>API Books</span>
            </a>
            <ul class="sub-menu" aria-expanded="false">
                <li><a href="{{route('api.books.all')}}">Books</a></li>
            </ul>
        </li>

                        

                         

                           

                            
                         

                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>