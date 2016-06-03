# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Moment.destroy_all
Moment.create([
  {
    date: Date.new(1951, 4, 21),
    name: "Bill Barilko's last goal",
    info: "The last goal he ever scored (in overtime against the Montreal Canadiens' Gerry McNeil in Game 5 of the Stanley Cup final, on April 21, 1951) won the Maple Leafs the Stanley Cup",
    link: "last-goal-he-ever-scored"
  },
  {
    date: Date.new(1951, 8, 26),
    name: "Bill Barilko's disappears",
    info: "On August 26, 1951, Barilko joined his dentist, Henry Hudson, on a flight aboard Hudson's Fairchild 24 floatplane to Seal River, Quebec, for a weekend fishing trip.[6] On the return trip, the single-engine plane disappeared and its passengers remained missing.",
    link: "a-fishing-trip"
  },
  {
    date: Date.new(1962, 4, 12),
    name: "Rob Baker born",
    info: "In Kingston, Ontario",
    link: "baby-rob"
  },
  {
    date: Date.new(1962, 6, 6),
    name: "Bill Barilko discovered",
    info: "Helicopter pilot Ron Boyd discovered the wreckage of the plane about 100 kilometres (62 mi) north of Cochrane, Ontario, about 56 kilometers (35 miles) off course. The cause of the crash was deemed to have been a combination of pilot inexperience, poor weather and overloaded cargo. Notably, the Maple Leafs won the Stanley Cup that year, after not winning it at all during the eleven years that he was missing.",
    link: "the-year-he-was-discovered"
  },
  {
    date: Date.new(1964, 2, 6),
    name: "Gord Downie born",
    info: "In Amherstview, Ontario",
    link: "baby-gord"
  },
  {
    date: Date.new(1964, 8, 23),
    name: "Paul Langlois born",
    info: "in Ottawa, Canada",
    link: "baby-paul"
  },
  {
    date: Date.new(1966, 7, 7),
    name: "Johnny Fay born",
    info: "in Kingston, Canada",
    link: "baby-johnny"
  },
  {
    date: Date.new(1972, 9, 28),
    name: "The goal that everyone remembers",
    info: "If there's a goal that everyone remembers, it was back in old '72.  We all squeezed the stick and we all pulled the trigger and all I remember is sitting beside you.",
    link: "never-saw-someone-say-that-before"
  },
  {
    date: Date.new(1984),
    name: "The Tragically Hip are formed",
    info: "The Tragically Hip formed in 1984 at Kingston Collegiate in Kingston, Ontario, where Gord Downie, Gord Sinclair and Rob Baker were students. Guitarist Paul Langlois joined in 1986; saxophonist Davis Manning left that same year. They took their name from a skit in the Michael Nesmith movie Elephant Parts.",
    link: "band-is-formed"
  },
  {
    date: Date.new(1987),
    name: "The Tragically Hip (EP)",
    link: "the-tragically-hip-ep"
  },
  {
    date: Date.new(1989, 9, 5),
    name: "Up to Here",
    link: "up-to-here"
  },
  {
    date: Date.new(1991, 2, 19),
    name: "Road Apples",
    link: "road-apples"
  },
  {
    date: Date.new(1992, 10, 6),
    name: "Fully Completely",
    link: "fully-completely"
  },
  {
    date: Date.new(1994, 9, 19),
    name: "Day for Night",
    link: "day-for-night"
  },
  {
    date: Date.new(1996, 5, 7),
    name: "Trouble at the Henhouse",
    link: "trouble-at-the-henhouse"
  },
  {
    date: Date.new(1998, 7, 14),
    name: "Phantom Power",
    link: "phantom-power"
  },
  {
    date: Date.new(2000, 6, 6),
    name: "Music @ Work",
    link: "music-at-work"
  },
  {
    date: Date.new(2002, 6, 11),
    name: "In Violet Light",
    link: "in-violet-light"
  },
  {
    date: Date.new(2004, 6, 29),
    name: "In Between Evolution",
    link: "in-between-evolution"
  },
  {
    date: Date.new(2006, 10, 17),
    name: "World Container",
    link: "world-container"
  },
  {
    date: Date.new(2009, 4, 7),
    name: "We Are the Same",
    link: "we-are-the-same"
  },
  {
    date: Date.new(2012, 10, 2),
    name: "Now for Plan A",
    link: "now-for-plan-a"
  },
  {
    date: Date.new(2016, 6, 17),
    name: "Man Machine Poem",
    link: "man-machine-poem"
  }
])
