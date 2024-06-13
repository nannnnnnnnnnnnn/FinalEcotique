
import SwiftUI

struct FourthView: View {
    @Binding var text: String
    var body: some View {
        ZStack {
              Color(red: 0.967, green: 0.952, blue: 0.922)
                  .edgesIgnoringSafeArea(.all)
            NavigationStack{
                ScrollView(.vertical) {
                    VStack(alignment: .leading) {
                        // Welcome Text
                        Text("Welcome, \(text)!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top, 20)
                            .padding(.horizontal)
                        
                        // Search Bar
                        //*add functionality
                        HStack {
                            TextField("Search for brands...", text: .constant(""))
                                .padding(.leading, 10)
                                .foregroundColor(Color(red: 0.86, green: 0.617, blue: 0.653))
                            Image(systemName: "magnifyingglass")
                                .padding(.trailing, 10)
                                .foregroundColor(Color(red: 0.86, green: 0.617, blue: 0.653))
                        }
                        .frame(height: 40)
                        .background(Color(red: 0.918, green: 0.869, blue: 0.827))
                        .cornerRadius(35)
                        .padding(.horizontal)
                        .padding(.top, 20)
                        
                        
                        //the brands
                        
                        HStack {
                            Text("Eco-friendly Brands")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.top, 30)
                                .foregroundColor(Color(red: 0.15, green: 0.045, blue: 0.1))
                            ZStack {
                                Image("arrow")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 13, height: 13)  // Adjust the size as needed
                                    .offset(x: -16, y: 16)
                            }
                        }
                        
                        
                        // Horizontal Scroll for brands
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 30) {
                                Brands(imageName: "Brand 1", title: "everlane", subtitle: "Ethically sourced, finest materials, Radical Transparency. Making the right choice as easy as putting on a great T-shirt")
                                Brands(imageName: "Brand 2", title: "tentree", subtitle: "Small changes, big impact. Use reusable bags and bottles. Each purchase supports trees, sustainability, fair work conditions.")
                                Brands(imageName: "Brand 3", title: "girlfriend", subtitle: "Believe in ethical manufacturing, recycled materials, health, wellness, and transparency. Girlfriend Collective: prioritizing people and the planet.")
                                Brands(imageName: "Brand 4", title: "pact", subtitle: "Sustainable Fashion for All. Affordable, comfortable, organic cotton. Softer, durable, better for the environment. Casual style, ethical mission.")
                                
                            }
                            .padding(.horizontal)
                            .offset(y: 3)
                        }
                        
                        
                        // Horizontal Scroll for Categories
                        // one cricle for dallas and one for austin, after clicking on it itll take you to the location for thrift stores.
                        HStack {
                            Text("Thrift Stores Near You")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.top, 30)
                                .foregroundColor(Color(red: 0.15, green: 0.045, blue: 0.1))
                            ZStack {
                                Image("arrow")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 13, height: 13)
                                    .offset(x: -16, y: 16)
                            }
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                Thrift(imagephoto: "store 1", subtitle: "Austin, TX", title: "Treasure City Thrift")
                                Thrift(imagephoto: "store 2", subtitle: "Austin, TX", title: "2nd STREET")
                                Thrift(imagephoto: "store 3", subtitle: "Austin, TX", title: "BOODY")
                                Thrift(imagephoto: "store 4", subtitle: "Austin, TX", title: "THREADS 4 THOUGHT")
                                
                            }
                            .padding(.horizontal)
                            
                            
                            
                        }
                        .padding(.top, 10)
                        
                        Text("Articles")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .padding(.top, 30)
                            .foregroundColor(Color(red: 0.15, green: 0.045, blue: 0.1))
                        
                        // make each article go to the arricle website after clicking it
                        //                NavigationLink(destination: quiz1()) {
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            VStack(spacing: 20) {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 35)
                                        .padding(.horizontal, 40)
                                        .padding(.top, 10)
                                        .frame(width: 410, height: 180)
                                    
                                        .foregroundColor(Color(red: 0.918, green: 0.869, blue: 0.827))
                                        .shadow(radius: 5)
                                    
                                    
                                    
                                    Articles(imageName: "Article 1", title: "Forbes", head: "Leads To Growth For \nSustainable Fashion Brands", subtitle: "click here", subtitleURL: URL(string:"https://www.forbes.com/sites/catherineerdly/2024/03/08/avoiding-greenwashing-leads-to-growth-for-sustainable-fashion-brands/")!)
                                    
                                    
                                }
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 35)
                                        .padding(.horizontal, 40)
                                        .padding(.top, 10)
                                        .frame(width: 410, height: 180)
                                    
                                        .foregroundColor(Color(red: 0.918, green: 0.869, blue: 0.827))
                                        .shadow(radius: 5)
                                    Articles(imageName: "Article2", title: "the Cut", head: "Mara Hoffman Wants a \nBetter Term for 'Sustainable \nFashion'", subtitle: "click here", subtitleURL: URL(string:"https://www.thecut.com/2023/11/in-her-shoes-podcast-with-mara-hoffman.html")!)
                                    
                                }
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 35)
                                        .padding(.horizontal, 40)
                                        .padding(.top, 10)
                                        .frame(width: 410, height: 180)
                                    
                                        .foregroundColor(Color(red: 0.918, green: 0.869, blue: 0.827))
                                        .shadow(radius: 5)
                                    Articles(imageName: "Article 3", title: "Bazaar", head: "Ethical fashion guide: look \ngood, feel great.", subtitle: "click here", subtitleURL: URL(string:"https://www.harpersbazaar.com/uk/fashion/what-to-wear/g19491797/the-best-and-still-chic-sustainable-brands/")!)
                                    
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                        
                    }
                }
            }
        }
    }
    
    struct Thrift: View {
        var imagephoto: String
        var subtitle: String
        var title: String
        
        
        var body: some View {
            VStack(alignment: .leading, spacing: 10) {
                Image(imagephoto)
                    .resizable()
                
                
                    .cornerRadius(30)
                
                    .frame(width: 250, height: 130)
                
                Text(subtitle)
                    .multilineTextAlignment(.leading)
                    .padding([.leading, .bottom])
                    .lineLimit(nil) // Allows multiline text
                    .fixedSize(horizontal: false, vertical: true) // Ensures the text wraps
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.776, green: 0.539, blue: 0.575))
                    .offset(y: 0.2)
                    .fontWeight(.bold)
                
                
                Text(title)
                
                    .padding(.leading)
                    .offset(y: -20)
                    .font(.custom("Futura", fixedSize: 20))
                    .foregroundColor(Color(red: 0.776, green: 0.539, blue: 0.575))
                    .fontWeight(.bold)
                
                
                
                
            }
            //        .frame(width: 200, height: 228) // Adjust width as needed
            //        .padding()
            //        .background(Color.gray.opacity(0.1))
            //        .cornerRadius(35)
            
            
        }
    }
    
    
    struct Brands: View {
        var imageName: String
        var title: String
        var subtitle: String
        
        
        var body: some View {
            VStack(alignment: .leading, spacing: 10) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.top)
                    .offset(y: 15)
                
                
                    .frame(width: 230, height: 110)
                    .clipShape(BottomRoundedCorners(radius: 20))
                Text(title)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .offset(y: 0.2)
                    .font(.custom("Futura", fixedSize: 23))
                    .foregroundColor(Color(red: 0.731, green: 0.508, blue: 0.544))
                
                
                Text(subtitle)
                    .multilineTextAlignment(.leading)
                    .padding([.leading, .bottom])
                    .lineLimit(nil) // Allows multiline text
                    .fixedSize(horizontal: false, vertical: true) // Ensures the text wraps
                    .font(.custom("Futura", fixedSize: 14))
                    .offset(y: -7)
                    .foregroundColor(Color(red: 0.776, green: 0.539, blue: 0.575))
                
                
            }
            .frame(width: 200, height: 228) // Adjust width as needed
            .padding()
            .background(Color(red: 0.918, green: 0.869, blue: 0.827))
            
            .cornerRadius(35)
            
            
        }
    }
    struct Articles: View {
        var imageName: String
        var title: String
        var head: String
        var subtitle: String
        var subtitleURL: URL
        
        var body: some View {
            HStack {
                VStack {
                    Text(title)
                        .font(.headline)
                        .offset(x: -20, y: -10)
                        .font(.custom("Futura", fixedSize: 23))
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text(head)
                        .font(.caption)
                        .fixedSize(horizontal: false, vertical: true) // Ensures the text wraps
                        .font(.custom("Futura", fixedSize: 14))
                        .offset(x: 30, y: 8)
                        .foregroundColor(Color(red: 0.15, green: 0.045, blue: 0.1))
                    
                    
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundColor(Color(red: 0.776, green: 0.539, blue: 0.575))
                        .offset(x: -15, y: 30)
                    
                    Link(subtitle, destination: subtitleURL)
                        .font(.subheadline)
                        .foregroundColor(Color(red: 0.776, green: 0.539, blue: 0.575))
                        .offset(x: -15, y: 10)
                    
                    
                    
                    
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading) // Ensures text takes available space without overlapping the image
                .padding([.leading, .top, .bottom])
                
                
                
                Image(imageName)
                    .resizable()
                    .frame(width: 130, height: 140)
                    .cornerRadius(35)
                    .offset(x: -40, y: 5)
                
            }
            .padding()
            
        }
    }
    //ROUNDED CORNERS FOR IMAGE
    struct BottomRoundedCorners: Shape {
        var radius: CGFloat
        
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(
                roundedRect: rect,
                byRoundingCorners: [.bottomLeft, .bottomRight],
                cornerRadii: CGSize(width: radius, height: radius)
            )
            return Path(path.cgPath)
        }
    }

        
    }


