module ApplicationHelper
    def login_helper(style = "")
        #str = "<span class='#{style}'> /</span>"
        if current_user.is_a?(GuestUser)
            (link_to "Login", new_user_session_path, class: style) + 
            " ".html_safe +
            (link_to "Register", new_user_registration_path, class: style)
        else 
            link_to "Logout", destroy_user_session_path, method: :delete, class: style  
        end 
    end
    
    def source_helper
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]}"
            content_tag(:p, greeting, class: "source-gretting")
        end
    end

    def nav_items
        [
            {url: root_path, title: 'Home'}, 
            
            {url: about_me_path, title: 'About'}, 
            
            {url: contact_path, title: 'Contact'}, 
            
            {url: blogs_path, title: 'Blog'}, 
            
            {url: portfolios_path, title: 'Portfolio'},
            
            {url: tech_news_path, title: 'Tech News'}
            
            ]
    end
    
 
    def nav_helper(style, tag_type)
        nav_links = ''
        
        nav_items.each { |item| nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active?(item[:url])}'>#{item[:title]}</a></#{tag_type}>" }

        nav_links.html_safe   
    end
    
    def active?(path)
        "active" if current_page? path    
    end
    
    
    #For custom Petrid gem fix it later
    #def copyright_generator
        #PetridViewTool::Renderer.copyright("Dimitri Williams", "All rights reserved")
    #end
    
=begin  old nav_helper before refactor 
    def nav_helper(style , tag_type)
nav_links = <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style} #{active?(root_path)}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{about_me_path}" class="#{style} #{active?(about_me_path)}">About</a></#tag_type}>
<#{tag_type}><a href="#{contact_path}" class="#{style} #{active?(contact_path)}">Contact</a></#tag_type}>
<#{tag_type}><a href="#{blogs_path}" class="#{style} #{active?(blogs_path)}">Blog</a></#tag_type}>
<#{tag_type}><a href="#{portfolios_path}" class="#{style} #{active?(portfolios_path)}">Portfolio</a></#tag_type}>
NAV
    nav_links.html_safe    
    end
=end 
    
    
    
end
