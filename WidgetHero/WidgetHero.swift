//
//  WidgetHero.swift
//  WidgetHero
//
//  Created by owner on 1/1/21.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry { //internetten veri cekiyorsan birkac saniye bekleyebilirse birsey gostermek lazim kullaniciya
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }
//zamanin tek bir anindaki durum...veri tabaninin o anki goruntusu.
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
       // inaktif let entry = SimpleEntry(date: Date(), configuration: configuration, hero: Superhero)
       // inaktif completion(entry)
        //21
       // if let hero = try? JSONDecoder().decode(Superhero.self, from: Superhero) {
        //    let entry  = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
       // }
        
    }
//widget icinde sabah mesela farkli aksam farkli gostereyim diye timeline kullanilabilinir. zamana gore bir durum varsa app de kullanmali
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
           // let entry = SimpleEntry(date: entryDate, configuration: configuration)
           // entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}
//timeline girdisi
struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    
    //20 bunu yaptiktan sonra yukaridaki func lar hero isteyecek onlarida yap
    //let hero : Superhero
}
//widget icinde ne gosterilecek
struct WidgetHeroEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        Text(entry.date, style: .time)
    }
}
//widget in kendisi
@main
struct WidgetHero: Widget {
    let kind: String = "WidgetHero"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetHeroEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct WidgetHero_Previews: PreviewProvider {
    static var previews: some View {
        WidgetHeroEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
