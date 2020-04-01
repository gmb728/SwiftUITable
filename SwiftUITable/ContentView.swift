//
//  ContentView.swift
//  SwiftUITable
//
//  Created by Chang Sophia on 3/31/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var roles = [
        Role(name: "Snowwhite", rating: 7, image: "Snowwhite", weapon: "poison apple", number: 1, movie: "《SnowWhite&Seven Dwarfs》", pet: "birds", intro: "The character of Snow White first originated in 1937 from a Brothers Grimm fairy tale 《Schneewittchen》about a beautiful German princess with a jealous stepmother. Walt Disney turned this classic fairy tale into his very first animated feature film. Her true love is the Prince, who breaks her sleeping death 'slumber' (caused by the Evil Queen) with love's first kiss. She befriends the seven dwarfs during her stay at their cottage. At 14, she is the youngest of the Princesses."),
        Role(name: "Cinderella", rating: 6, image: "Cinderella", weapon: "glass shoe", number: 2, movie: "《Cinderella》", pet: "Jaq and Gus(mouses)", intro: "The best-known version of Cinderella is the fairy tale 《Cendrillon》 by Charles Perrault in 1697. In 1950, it was turned into an animated feature-length film by Walt Disney. Cinderella Tremaine is the eldest of all the Disney Princesses. She is 19 years of age during the events of the film. Her stepmother turned her into the family's sole servant after the death of her father. With magical help from her Fairy Godmother, she attends a royal ball and meets Prince Charming, and eventually marries him, thus freeing her from her life of servitude. Cinderella is often considered the leader of the Princesses; often being put in the center of the group shots."),
        Role(name: "Aurora", rating: 7, image: "Aurora", weapon: "sleep", number: 3, movie: "《Sleeping Beauty》", pet: "Dal McKennon(owl)", intro: "Best known as the heroine of the 1959 animated classic Sleeping Beauty, which is very loosely based on Charles Perrault's 《La Belle au Bois Dormant》. Although her dress changes from blue to pink thanks to a disagreement between two of her guardians, Merryweather and Flora, outside the film, she is most commonly seen wearing pink. She was cursed at birth to die before the sun sets on her 16th birthday by the evil fairy Maleficent by pricking her finger on the spindle of a spinning wheel. One of the three good fairies, Merryweather, was able to weaken the curse by changing death to a deep slumber that could only be awakened by true love's kiss. By falling in love with Prince Phillip, the prince of a neighboring kingdom (and unknown to either of them, her betrothed), she was freed from the curse. Aurora is shown to be one of the taller princesses in the franchise."),
        Role(name: "Ariel", rating: 7, image: "Ariel", weapon: "hairbrush", number: 4, movie: "《Little Mermaid》", pet: "Flounder(flounder)", intro: "The heroine of the 1989 film, loosely based on the Danish fairy tale 《Den Lille Havfrue》 by Hans Christian Andersen, and the daughter of King Triton, ruler of the sea. Ariel is a 16-year-old mermaid who falls in love with a dashing human prince named Eric, an extension of her fascination with all things from the surface world. Her dream is to live a life on land. So it comes as no surprise when her dream causes her to fall victim to accepting a shady offer from Ursula the Sea Witch promising her a lifetime of happiness with Prince Eric as long as she carries out the rules outlined in the signed binding contract. Ursula persuades her to trade her beautiful voice, in exchange for becoming a human for three days. During these three days, Ariel must not only make Prince Eric fall in love with her, but the two must seal their love with a kiss. If Ariel is unable to uphold her end of the agreement, she must return to the sea to live out her days in Ursula's lair as a prisoner, joining the many other lost souls that have fallen victim to Ursula's wish granting over the years. However, Ariel is able to defeat Ursula with Eric's help and thanks to her father, she becomes human permanently and marries Eric at the end of the film."),
        Role(name: "Belle", rating: 8, image: "Belle", weapon: "book",  number: 5,movie: "《Beauty and the Beast》", pet: "Mrs Potts(teapots)", intro: "The young 17-year-old French commoner who is the heroine of the 1991 animated classic Beauty and the Beast, is loosely based on the French fairy tale 《La Belle et la Bête》 abridged from the version by Jeanne-Marie Leprince de Beaumont. The name Belle translates from the French word for beauty. In the film, she selflessly trades in her freedom, for that of her father's, in a bargain with the Beast, thus becoming his prisoner/guest. She soon learns to see the good hidden behind his hideous appearance and rough manner and eventually, over time, falling in love with him. By confessing her love at the end of the movie, she breaks the curse placed on him by the enchantress. The Beast and his staff are then restored to their human forms and Belle became his princess."),
        Role(name: "Jasmine", rating: 8, image: "Jasmine", weapon: "knife", number: 6, movie: "《Aladdin》", pet: "Abu(monkey)", intro: "The spunky, independent Arabian Princess of Agrabah, who dreams of seeing what's beyond her palace and be freed from her father's constant pestering of arranged royal marriage. She falls in love with the title character in 1992's Aladdin, whom she eventually marries.She is loosely based on Princess Badroulbadour (Arabic بدر البدور, badru l-budūr, 《full moon of full moons》) featured in the story of 《Aladdin and his Wonderful Lamp from 《One Thousand and One Nights》 of Scheherazade. Interestingly, the original story took place in China and not the Middle East."),
        Role(name: "Pocahontas", rating: 6, image: "Pocahontas", weapon: "wooden stick", number: 7, movie: "《Pocahontas》", pet: "Meeko(recoon)", intro: "Disney's Pocahontas is loosely based on the real life Native American princess of the Powhatan tribe (a name also borne by her father, the chief). Her real name was Matoaka since Pocahontas was her nickname and meant 'Playful One'. She falls in love with a man named John Smith, who helps her prevent a war from commencing between their people. At the end of the film, John is wounded and sent back to London for treatment."),
        Role(name: "Mulan", rating: 7, image: "Mulan", weapon: "sword", number: 8, movie: "《Mulan》", pet: "Mushu(a Chinese dragon)", intro: "Fa Mulan (or simply Mulan) is a brave heroine who impersonates a male soldier to fight for the Chinese Imperial Army in order to protect her ailing father who would have been required to go if she had not gone in his place. Mulan pretends to be her father's son, Ping, risking death, and dishonor if she is discovered. Joining a struggling troop of rookies led by Captain Li Shang (or simply Shang), Ping is the driving force behind the troop's dramatic change into respectable soldiers. Ping is admired by everyone until he is injured during the battle and requires medical care, resulting in the outing of his secret. Since Ping had saved Shang's life, Shang repays his debt and spares Mulan's life. No longer allowed in the Imperial Army, Mulan goes rogue and defeats the leader of the Hun army Shan Yu. The Chinese Emperor praises Mulan, recognizing her as a hero for saving China and for bringing honor to her family. Mulan is welcomed back into her home with loving, open arms. Shang arrives at Mulan's home shortly after her return, and the two's feelings for each other are made known.The character of Mulan is loosely based on the heroine from the well-known ancient Chinese poem The Ballad of Mulan (木蘭詩). She is the only Disney Princess who is not royal by blood or marriage. However, she has been bestowed the honor of a being an official Disney Princess because of her popularity as well as what she represents. The film is praised for its cultural authenticity and prevailing messages including family, love, courage, and most notably, the empowerment and equal rights of women."),
        Role(name: "Tiana", rating: 7, image: "Tiana", weapon: "gold ball", number: 9, movie: "《The Princess &Frog》", pet: "frog", intro: "Partly inspired from E.D. Baker's 2002 novel The Frog Princess, and the original fairy tale 《The Frog Prince》, Tiana is the heroine of the 2009 animated film The Princess and the Frog, and is the first African-American princess. She dreams of opening her own restaurant through hard work. By kissing Prince Naveen in frog form, she is turned into a frog because she kissed him for material gain, not love, and the magic can only be broken by a princess, so they are forced to set on a journey to find a way to undo the magic. Eventually, she finds herself falling for the handsome but spoiled prince, and willingly gives up her personal wants to be with him. By marrying the prince, Tiana becomes a real princess, and with her love, breaks the spell with a kiss. They finally open their own restaurant at the end of the film.Tiana officially became a member of the Disney Princess line-up on March 14, 2010, at the New York Palace Hotel in Manhattan, New York City. She is the only Princess whose story was inspired by an original fairy tale, a novel, and a real life person."),
        Role(name: "Rapunzel", rating: 7, image: "Rapunzel", weapon: "pan",  number: 10, movie: "《Tangled》", pet: "Pascal(chameleon)", intro: "The heroine from the animated feature Tangled is loosely based on the German title character from the Brothers Grimm fairy tale 《Rapunzel》. Her long hair, which is said to measure 70 feet in length, not only has magical healing powers but can be used as a weapon. Given the power by a magic golden flower, Mother Gothel kidnaps her as an infant to use her power to keep herself young. 18 years later, Rapunzel sneaks away from her tower with a thief, Flynn Rider, and sets on her own journey to find the flying lanterns that float into the sky every year on her birthday. To free her from Gothel's clutches, Flynn cuts her hair, thus destroying her power, and she is returned to her family. Rapunzel was officially welcomed into the Disney Princess Royal Court during a promotional event at Kensington Palace in London on October 2, 2011. Interestingly, even though Rapunzel's long golden hair is cut off in the movie, changing it from blonde to brown, her redesigned image shows it fully restored back to blonde, although somewhat shorter than its original 70-foot length."),
        Role(name: "Merida", rating: 7, image: "Merida", weapon: "bow and arrow", number: 11,movie: "《Brave》", pet: "Angus(horse)", intro: "Merida is the 16-year-old daughter of Queen Elinor, who rules the kingdom alongside her husband, King Fergus. Queen Elinor's expectations and demands of her daughter make Merida see Elinor as being cold, unfeeling, and distant, causing friction between the two. Despite Elinor's desire to see Merida as a proper royal lady, Merida is an impetuous girl with wild, unruly ginger hair and a passionate desire to take control of her own destiny. Merida has honed her skill with the bow and is the most skilled archers in her kingdom. She is also well trained in sword-fighting and an expert horsewoman, riding wildly across the countryside on her horse, Angus.She is the second princess from a Pixar film (the first is Princess Atta from A Bug's Life), the first original princess in the line-up that is not inspired by either literature (Snow White, Cinderella, etc.) or real life (Pocahontas, Mulan) works, and the first without a love interest. She also never sings a major song, thus breaking away the traditional line-up, though as a child, she sang a small verse of a song in Gaelic with her mother, and Merida's rich Scottish brogue makes her the second Disney Princess with an accent other than Standard American or British. Merida officially joined the Disney Princess court on May 11, 2013, at Walt Disney World's Cinderella Castle."),
       
        Role(name: "Moana", rating: 7, image: "Moana", weapon: "paddle", number: 12, movie: "《Moana》", pet: "Pua and Heihei(pig and rooster)", intro: "The daughter of Motunui's village chief, Moana was chosen by the Ocean to restore the Heart of Te Fiti and save her island from a life-killing darkness. Due to an ancient law upheld by her father, Chief Tui, Moana is forbidden from ever going beyond the reef. She eventually finds the courage to do so, with the help of a powerful demigod named Maui, and the guidance of her Gramma Tala. In restoring Te Fiti's lost heart, the world is freed of darkness, allowing Moana's people to voyage the seas as freely as they please.The fourth Princess to come from the minds of John Musker and Ron Clements (Ariel, Jasmine, and Tiana), Moana is one of the few Disney Princesses not to be based on a preexisting character. Rather, her story (save for Maui and his exploits) is almost wholly original. Furthermore, unlike her most recent predecessors, Moana was not inducted with a coronation event. Instead, she was slowly integrated via Disney Princess marketing such as books, social media posts, and toylines following the release of her film, before being added to the franchise's official website as a member in 2019."),
        Role(name: "Elsa", rating: 7, image: "Elsa", weapon: "frozen magic", number: 13, movie: "《Frozen》", pet: "Olaf(Snowman)", intro: "Queen Anna of Arendelle (pronounced Ah-na) is the protagonist of Disney's 2013 animated feature film Frozen and the deuteragonist of its 2019 sequel. She is the second-born daughter of King Agnarr and Queen Iduna, the younger sister of Elsa, and the contemporary ruler of Arendelle. During their childhood, an accident involving Elsa's magic created a rift between the two sisters, leaving Anna devoid of love and human company for many years. Despite this, Anna remained big-hearted and optimistic, albeit socially awkward. When their estrangement incidentally triggered an eternal winter, Anna embarked on a perilous journey to save her kingdom and mend the broken bond between herself and her sister.Three years after her adventure, a rekindled Anna and Elsa embarked on another journey to confront the elemental spirits of an Enchanted Forest. Upon their journey's end, Elsa remained in the forest to join the spirits, while Anna was crowned Queen of Arendelle and married Kristoff.Anna is loosely based on Gerda, the female protagonist of the Hans Christian Andersen fairy tale 《The Snow Queen》 and the Princess from the same story."),
        Role(name: "Anna", rating: 7, image: "Anna", weapon: "moose", number: 14, movie: "《Frozen》", pet: "Olaf(Snowman)", intro:"Elsa is the deuteragonist of Disney's 2013 animated feature film, Frozen, and the protagonist of its 2019 sequel. Born with the power of ice and snow, Elsa is the firstborn daughter of King Agnarr and Queen Iduna, older sister of Queen Anna, and the former queen of Arendelle. Throughout most of her young life, Elsa feared that her powers were monstrous. Therefore, she isolated herself from the world as a means of protecting her family and kingdom. Elsa's anxieties would eventually trigger a curse that plunged Arendelle into an eternal winter. Through Anna's love, however, Elsa is able to control her powers and live peacefully amongst her people with newfound self-confidence.Three years into her reign, Elsa abdicates the throne to assume her rightful place as the fifth spirit of the Enchanted Forest that bridges the magic of nature and people.Elsa is loosely based on the titular character of 《The Snow Queen》, a fairy tale by Hans Christian Andersen, and to a greater extent in terms of characterization, Kai from the same story. While the character from the original fairy tale was a neutral character, Elsa was rewritten as a tragic heroine whose personality and role was more closely modeled after her counterpart of Kai.")
             
    ]
    var body: some View {
        
        List(roles) { role in
            
            RoleRow(role: role)
        }
    
}

struct Role: Identifiable {
    var id = UUID()
    var name: String
    var rating: Int
    var image: String
    var weapon: String
    var number: Int
    var movie: String
    var pet: String
    var intro: String
}

struct RoleRow: View{
    var role: Role
    
    var body: some View {
        VStack(alignment:.leading) {
           Image(role.image)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .cornerRadius(10)
               .padding(10)
       
            HStack{
                Text("Princess Name:")
                .font(.headline)
                .foregroundColor(.secondary)
                Text(role.name)
                .font(.headline)
                .foregroundColor(.primary)
                 
            }
            HStack{
                Text("Rating:")
                .font(.headline)
                .foregroundColor(.secondary)
                HStack{
                    ForEach(1...(role.rating), id: \.self)
                { _ in
                    Image(systemName: "star.fill")
                        .font(.headline)
                        .foregroundColor(.yellow)
                    }
                }
            }
        HStack{
            Text("Weapon:")
                .font(.headline)
               .foregroundColor(.secondary)
            Text(role.weapon)
               .font(.headline)
               .foregroundColor(.primary)
               
            }
            
        HStack {
            Text("Released Order: ")
            .font(.headline)
            .foregroundColor(.secondary)
            Image(systemName:"\(self.role.number).circle.fill")
                        .font(.headline)
                        .foregroundColor(.black)
            }
           
        HStack{
            Text("Feature Film:")
                .font(.headline)
                .foregroundColor(.secondary)
            Text(role.movie)
                .font(.headline)
                .foregroundColor(.primary)
                 
            }
            Spacer()
        HStack{
                   Text("Pet:")
                      .font(.headline)
                      .foregroundColor(.secondary)
                   Text(role.pet)
                      .font(.headline)
                      .foregroundColor(.primary)
                     
                   
                   }
          Spacer()
            
            HStack(alignment: .center){
            Text(role.intro)
                .font(.headline)
                .foregroundColor(.secondary)
               
            }
        }
    
        }
    
}
}

 
            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
