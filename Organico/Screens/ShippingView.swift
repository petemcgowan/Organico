//
//  ShippingView.swift
//  Organico
//
//  Created by Peter McGowan on 08/01/2023.
//

import SwiftUI


struct ShippingView: View {
//    @EnvironmentObject var menuOpenedEnv: MenuOpened

    var body: some View {
        
        ScrollView {
            Group{
                Section {
                    Text("Shipping")
                    .font(Font.custom("Poppins-Light", size: 34))
                    .foregroundColor(Color("fontColor"))
                }
                Spacer()
                Spacer()
                Text("**How much is shipping?**\n\nShipping is free for orders over €100.\n\nOtherwise, it’s a fixed flat rate of €4.95 for up to 20kg of shopping. This just about covers what we pay An Post for each shipping label.\n\nWhat it doesn't cover is the cost of handpicking and carefully packing your order. We absorb those costs so we can keep the shipping charge as low as possible for you.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**Do you ship to where I live?**\n\nAs long as you live in Ireland, we can get an order to you. We ship to all 32 Irish counties.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**When will my order be shipped?**\n\nIn many cases, if you place an order Monday - Thursday, we'll ship your order the next working day. (Friday orders will ship the following week.)\n\nDuring particularly busy times, next day shipping may not be possible. But if we expect your order to take an unusually long time, you'll hear from us.\n\nThe other thing to note is that very heavy orders - such as bulk and multi-buy orders - take a little extra time to ship.\n\nIn all cases, you'll receive a notification when your order has shipped.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**When will my order arrive?**\n\nThe past few years have taught us that anything can change at a moment's notice, but in general, expect 2-3 working days for delivery.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**Is next day delivery an option?**\n\nWe don't have a guaranteed next day delivery option. However, occasionally people get in touch when they're in urgent need of an order.\n\nFor instance, when a person is sick and needs a natural remedy as quick as possible. Or when a baby is due to be born and nappies are required.\n\nIn these instances, we do all we can to rush an order out the door.\n\nGet in touch with us, online@organico.ie, if you're in a similar circumstance and want to flag an order as urgent.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
            } // end group
            Group{
                Text("**Which shipping service do you use?**\n\nYour order will arrive via An Post Signed For Delivery Service, which for much of the country means the parcels come with your Post Person. In most cases, someone will need to be available to accept the order.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**Can I cancel my order?**\n\nIf you wish to cancel an order and you have yet to receive a shipping notification, email us at online@organico.ie for help.\n\nBut do keep in mind we're unable to cancel an order after it's shipped.\n\n")
                .foregroundColor(Color("altFontColor"))
                Text("**I forgot to order something. Can I add on to an order I've already placed?**\n\nIf you’ve yet to receive a shipping notification for your order, it may be possible to place a second order but have the two orders shipped as one.\n\nHere’s what you’ll need to do straight away…\n\n1. Place a second order that contains the additions you want to make.\n\n2. Email us immediately after (online@organico.ie) with the order numbers of your first and second orders to let us know you wish to combine them.\n\nWe’ll do our best to add your second order to your first. If this is possible, you’ll receive a refund for the second shipping charge.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**Can I send an order as a gift to someone?**\n\nAbsolutely. We love doing this!\n\nIf you want to send some treats to a friend, all you have to do is put their name and address in the Shipping Address field. We’ll ship the order straight to them.\n\nBut if you want to send an extra special gift, [add this item to your order.](https://www.organico.ie/this-is-a-gift.html)\n\nWe’ll gift pack the order, which means we’ll:\n\n * leave out the invoice.\n\n * present the gift in the perfect box finished with tissue paper on top.\n\n * include a handwritten note to let the recipient know who the gift is from - or you can email us a personal message to include (online@organico.ie).\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**Why is a product I was able to order actually out of stock?**\n\nIf you’re wondering specifically about bulk bags and multi-buy products, we’ve covered those details in the next question.\n\nOtherwise...\n\nThe stock you see online is also available on our shop floor. So occasionally, a product sells out locally before an online order has been processed.\n\nWe'll always get in touch to let you know if this has happened.\n\nOften, products are quick to come back in stock. So we can hang on to your order until the missing item arrives.\n\nIf that doesn't suit, we can deduct the out of stock product from your invoice and ship the order as is.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
            } // end group
            Group{
                Text("**Why do bulk and multi-buy products take longer to ship?**\n\nIf you’ve ordered 5kg bulk bags or multi-buys of 6+ products, your order will take a little longer to ship, approximately 5 working days.\n\nOur shop in West Cork just doesn’t have enough space for us to keep enough bulk bags or multi-buys in stock at all times. So to get these products to you, we may have to order from our suppliers before filling your order.\n\nWe also have a limit of 22kg per order, which is An Post’s weight restriction. Most orders fall under this limit. But worth keeping in mind if you plan to order a lot of bulk products.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**Will my order arrive in a bunch of plastic?**\n\nThis is a topic we get really excited about...\n\nOur goal is to be as low waste as possible, while also ensuring your order arrives safe and sound (i.e., no spills or breakages).\n\nWe strive to avoid using plastic as packing materials. In many cases, the plastic we do use is repurposed from orders that arrived from our suppliers.\n\nAny bubble wrap or polystyrene loose fill in your order? Those came from our suppliers so they're on their second use. We never buy them new.\n\nThe envelopes we use for small orders are bought new, but they're sturdy enough that you should be able to reuse them.\n\nYou may notice we don't ship in branded boxes. As often as we can, we use second-life boxes.\n\nThere was a time when we had to recycle a lot of boxes that arrived from our suppliers because they weren't fit for any other purpose. But then we bought a shredding machine.\n\nNow we can turn awkward boxes into extra padding for orders. It's pretty much eliminated our cardboard recycling.\n\nBy the way, the shredded boxes in your order make great fire lighters.\n\nWhich reminds us - we always love seeing how our customers take our second-life boxes and give them third, even fourth lives.\n\nWe've been sent pictures of an epic extension to a doll's house, a cosy cat's bed, and an impressive reinforcement system for a garden... all made from boxes we've shipped orders in.\n\nIf you come up with a new use for any of our packing material, tell us about it! (online@organico.ie) We'll share your idea with the rest of the community.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
                Text("**Do you ever offer free shipping under €100?**\n\nIt just so happens we'll send you a free shipping code to use on your next order of €50 or more when you sign up to our mailing list.\n\nAs a subscriber, you’ll also get our latest guides to healthy and sustainable living, exclusive invitations to our free webinars, and the occasional surprise gift of more free shipping codes for orders over €50.\n\n"
                )
                .foregroundColor(Color("altFontColor"))
            } // end group
        } //scrollview
        .font(Font.custom("Poppins-Light", size: 18))
        .background(Color("SafeAreaBackgroundColor"))
        .onAppear {
//            menuOpenedEnv.menuOpened = false
        }
    }
}

struct ShippingView_Previews: PreviewProvider {
    static var previews: some View {
        ShippingView()
    }
}
