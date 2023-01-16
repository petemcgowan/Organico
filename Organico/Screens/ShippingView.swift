//
//  ShippingView.swift
//  Organico
//
//  Created by Peter McGowan on 08/01/2023.
//

import SwiftUI


struct ShippingView: View {
    @EnvironmentObject var menuOpenedEnv: MenuOpened

    var body: some View {
        
        ScrollView {
            Group{
                Section {
                    Text("Shipping")
                        .font(Font.custom("Nobile-Regular", size: 30))
                    Spacer()
                }
                Group {
                    Text("How much is shipping?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()
                    HStack{
                        Text("Shipping is free for orders over €100.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Spacer()
                    }
                    HStack{
                        Text("Otherwise, it’s a fixed flat rate of €4.95 for up to 20kg of shopping. This just about covers what we pay An Post for each shipping label.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("What it doesn't cover is the cost of handpicking and carefully packing your order. We absorb those costs so we can keep the shipping charge as low as possible for you.")
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                Group{
                    Text("Do you ship to where I live?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()
                    
                    HStack{
                        Text("As long as you live in Ireland, we can get an order to you. We ship to all 32 Irish counties.")
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                Group{
                    Text("When will my order be shipped?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()

                    HStack{
                        Text("In many cases, if you place an order Monday - Thursday, we'll ship your order the next working day. (Friday orders will ship the following week.)")
                        Spacer()
                    }
                    HStack{
                        Text("During particularly busy times, next day shipping may not be possible. But if we expect your order to take an unusually long time, you'll hear from us.")
                        Spacer()
                    }
                    HStack{
                        Text("The other thing to note is that very heavy orders - such as bulk and multi-buy orders - take a little extra time to ship.")
                        Spacer()
                    }
                    HStack{
                        Text("In all cases, you'll receive a notification when your order has shipped.")
                        Spacer()
                        Spacer()
                    }
                }
                Group{
                    Text("When will my order arrive?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()

                    HStack{
                        Text("The past few years have taught us that anything can change at a moment's notice, but in general, expect 2-3 working days for delivery.")
                        Spacer()
                        Spacer()
                    }
                }
                Group{
                    Text("Is next day delivery an option?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()

                    HStack{
                        Text("We don't have a guaranteed next day delivery option. However, occasionally people get in touch when they're in urgent need of an order.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("For instance, when a person is sick and needs a natural remedy as quick as possible. Or when a baby is due to be born and nappies are required.")
                        Spacer()
                    }
                }
                Group {
                    Spacer()
                    HStack{
                        Text("In these instances, we do all we can to rush an order out the door.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("Get in touch with us, online@organico.ie, if you're in a similar circumstance and want to flag an order as urgent.")
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
            }
            Group{
                Text("Which shipping service do you use?")
                    .bold()
                    .foregroundColor(Color("HeaderFontColor"))
                Spacer()

                HStack{
                    Text("Your order will arrive via An Post Signed For Delivery Service, which for much of the country means the parcels come with your Post Person. In most cases, someone will need to be available to accept the order.")
                    Spacer()
                }
                Spacer()
                Spacer()
            }
            Group{
                Text("Can I cancel my order?")
                    .bold()
                    .foregroundColor(Color("HeaderFontColor"))
                Spacer()

                HStack{
                    Text("If you wish to cancel an order and you have yet to receive a shipping notification, email us at online@organico.ie for help.")
                    Spacer()
                }
                Spacer()
                HStack{
                    Text("But do keep in mind we're unable to cancel an order after it's shipped.")
                    Spacer()
                }
            }
            Group {
                Spacer()
                Spacer()

                Text("I forgot to order something. Can I add on to an order I've already placed?")
                    .bold()
                    .foregroundColor(Color("HeaderFontColor"))
                Spacer()

                HStack{
                    Text("If you’ve yet to receive a shipping notification for your order, it may be possible to place a second order but have the two orders shipped as one.")
                    Spacer()
                }
                Spacer()
            }
            Group{
                HStack{
                    Text("Here’s what you’ll need to do straight away…")
                    Spacer()
                }
                Spacer()
                HStack{
                    Text("1. Place a second order that contains the additions you want to make.")
                    Spacer()
                }
                Spacer()
                HStack{
                    Text("2. Email us immediately after (online@organico.ie) with the order numbers of your first and second orders to let us know you wish to combine them.")
                    Spacer()
                }
                Spacer()
                HStack{
                    Text("We’ll do our best to add your second order to your first. If this is possible, you’ll receive a refund for the second shipping charge.")
                    Spacer()
                }
                Spacer()
                Spacer()
            }
            Group {
                Group{
                    Text("Can I send an order as a gift to someone?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()

                    HStack{
                        Text("Absolutely. We love doing this!")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("If you want to send some treats to a friend, all you have to do is put their name and address in the Shipping Address field. We’ll ship the order straight to them.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("But if you want to send an extra special gift, [add this item to your order.](https://www.organico.ie/this-is-a-gift.html)")
                        Spacer()
                    }
                }
                Group {
                    Spacer()
                    HStack{
                        Text("We’ll gift pack the order, which means we’ll:")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text(" * leave out the invoice.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text(" * present the gift in the perfect box finished with tissue paper on top.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text(" * include a handwritten note to let the recipient know who the gift is from - or you can email us a personal message to include (online@organico.ie).")
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                Group{
                    Text("Why is a product I was able to order actually out of stock?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()

                    HStack{
                        Text("If you’re wondering specifically about bulk bags and multi-buy products, we’ve covered those details in the next question.")
                        Spacer()
                    }
                    HStack{
                        Text("Otherwise...")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("The stock you see online is also available on our shop floor. So occasionally, a product sells out locally before an online order has been processed.")
                        Spacer()
                    }
                }
                Group {
                    Spacer()
                    HStack{
                        Text("We'll always get in touch to let you know if this has happened.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("Often, products are quick to come back in stock. So we can hang on to your order until the missing item arrives.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("If that doesn't suit, we can deduct the out of stock product from your invoice and ship the order as is.")
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                Group{
                    Text("Why do bulk and multi-buy products take longer to ship?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()

                    HStack{
                        Text("If you’ve ordered 5kg bulk bags or multi-buys of 6+ products, your order will take a little longer to ship, approximately 5 working days.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("Our shop in West Cork just doesn’t have enough space for us to keep enough bulk bags or multi-buys in stock at all times. So to get these products to you, we may have to order from our suppliers before filling your order.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("We also have a limit of 22kg per order, which is An Post’s weight restriction. Most orders fall under this limit. But worth keeping in mind if you plan to order a lot of bulk products.")
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                Group{
                    Group {
                        Text("Will my order arrive in a bunch of plastic?")
                            .bold()
                            .foregroundColor(Color("HeaderFontColor"))
                        Spacer()

                        HStack{
                            Text("This is a topic we get really excited about...")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("Our goal is to be as low waste as possible, while also ensuring your order arrives safe and sound (i.e., no spills or breakages).")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("We strive to avoid using plastic as packing materials. In many cases, the plastic we do use is repurposed from orders that arrived from our suppliers.")
                            Spacer()
                        }
                    }
                    Group {
                        Spacer()
                        HStack{
                            Text("Any bubble wrap or polystyrene loose fill in your order? Those came from our suppliers so they're on their second use. We never buy them new.")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("The envelopes we use for small orders are bought new, but they're sturdy enough that you should be able to reuse them.")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("You may notice we don't ship in branded boxes. As often as we can, we use second-life boxes.")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("There was a time when we had to recycle a lot of boxes that arrived from our suppliers because they weren't fit for any other purpose. But then we bought a shredding machine.")
                            Spacer()
                        }
                        Spacer()
                    }
                    Group{
                        HStack{
                            Text("Now we can turn awkward boxes into extra padding for orders. It's pretty much eliminated our cardboard recycling.")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("By the way, the shredded boxes in your order make great fire lighters.")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("Which reminds us - we always love seeing how our customers take our second-life boxes and give them third, even fourth lives.")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text("We've been sent pictures of an epic extension to a doll's house, a cosy cat's bed, and an impressive reinforcement system for a garden... all made from boxes we've shipped orders in.")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Text ("If you come up with a new use for any of our packing material, tell us about it! (online@organico.ie) We'll share your idea with the rest of the community.")
                            Spacer()
                        }
                        Spacer()
                    }
                }
                Group{
                    Text("Do you ever offer free shipping under €100?")
                        .bold()
                        .foregroundColor(Color("HeaderFontColor"))
                    Spacer()

                    Spacer()
                    HStack{
                        Text("It just so happens we'll send you a free shipping code to use on your next order of €50 or more when you sign up to our mailing list.")
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("As a subscriber, you’ll also get our latest guides to healthy and sustainable living, exclusive invitations to our free webinars, and the occasional surprise gift of more free shipping codes for orders over €50.")
                        Spacer()
                    }
                    Spacer()
                }
            } // outer group
        } //scrollview
        .font(Font.custom("Nobile-Regular", size: 15))
        .background(Color("SafeAreaBackgroundColor"))
        .onAppear {
            menuOpenedEnv.menuOpened = false
        }
    }
}

struct ShippingView_Previews: PreviewProvider {
    static var previews: some View {
        ShippingView()
    }
}
