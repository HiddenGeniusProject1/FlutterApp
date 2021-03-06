
int _questionNumber = 0;

  List<String>quotes = [
    'Reggie Jackson - "Fans don\'t boo nobodies."',
    'Barack Obama - "If you are walking down the right path and you are willing to keep walking, eventually you will make progress.”',
    '“Michelle Obama - Success is only meaningful and enjoyable if it feels like your own.”',
    '“Colin Powell - There are no secrets to success. It is the result of preparation, hard work, and learning from failure.”',
    'Colin Kaepernick - "I don\'t believe in pressure. The pressure is not being prepared for what you want to do.”',
    'Malcolm X -  "There is no better than adversity. Every defeat, every heartbreak, every loss, contains its own seed, its own lesson on how to improve your performance next time.”',
    '“Shirley Chisholm - We must reject not only the stereotypes that others have of us but also those that we have of ourselves.”',
    '“Maya Angelou - "If you don\'t like something, change it. If you can\'t change it, change your attitude."',
    '“Kamala Harris - You have to see and smell and feel the circumstances of people to really understand them.”',
    '“Angela Davis - “I\'m no longer accepting the things I cannot change...I\'m changing the things I cannot accept.”',
    'Huey Newton - Black Power is giving power to people who have not had power to determine their destiny.',
    'Assata Shakur - “Nobody in the world, nobody in history, has ever gotten their freedom by appealing to the moral sense of the people who were oppressing them.”',
    'Fred Hampton - Let me just say: Peace to you, if you are willing to fight for it.',
    'Ericka Huggins - “We can together change the world. We are all threaded together like a huge tapestry of humanity. And we forget that we are interconnected.”',
    'Watani Stiner - Without forgiveness, there is no possibility of unity; without truth telling, there is no possibility of forgiveness.',
    'Michael Jordan - “I believe greatness is an evolutionary process that changes and evolves era to era.”',
    'Kobe Bryant - We psych ourselves up too much. Like if you try to talk yourself into, ‘Oh, this is a big moment, this is a big shot,’ you’re putting a lot of pressure on yourself. You shot that shot hundreds and thousands of times. Just shoot another one.”',
    'Rosa Parks - “I believe we are here on the planet Earth to live, grow up and do what we can to make this world a better place for all people to enjoy freedom.”',
    'Chadwick Boseman - “The struggles along the way are only meant to shape you for your purpose.”',
    'Harriet Tubman - I had reasoned this out in my mind; there was one of two things I had a right to', 'liberty', 'or death; if I could not have one', 'I would have the other.”',
    'Dorothy Height - “If you worry about who is going to get credit, you don\'t get much work done.”',
    'Dorothy Dandrige - " It (prejudice) is such a waste. It makes you logy and half-alive. It gives you nothing. It takes away."',
    'Jwalt - “Close your eyes, and think about your life as a movie. Each scene a new beginning directed by yours truly”.',
    'Candace Parker - You never want to go out with a loss. We just have to use this as motivation.',
    'LeBron James - "Nothing is given. Everything is earned."',
    'Bill Russell - “Most people have a harder time letting themselves love than finding someone to love them.”',
    'Kareem Abdul Jabar - I think that the good and the great are only separated by the willingness to sacrifice.',
    'Fannie Lou Hamer - “Nobody’s free until everybody’s free.”',
    'Bobby Seale - "You don\'t fight racism with racism, the best way to fight racism is with solidarity."',
    'Berry Gordy Jr. - “Don\'t judge yourself by others standards…have your own.”',
    'Tupac Shakur - Even warriors put their spears down on Sundays.',
    'Benjamin Banneker - “Presumption should never make us neglect that which appears easy to us, nor despair make us lose courage at the sight of difficulties.”',
    'Frederick Douglas - “Once you learn to read, you will be forever free.”',
    'WEB duBois - “You are not and yet you are: your thoughts, your deeds, above all your dreams still live.”',
    'Jackie Robinson - I don\’t think it matters what I believe, only what I do.',
    'George Washington Carver - Look about you. Take hold of the things that are here. Let them talk to you. You learn to talk to them.',
    'Muhammad Ali - "Don\'t count the days. Make the days count."',
    'Pele - The more difficult the victory, the greater the happiness in winning.”',
    'Common - “Education is what you get from reading the small print, experience is what you get from not reading it.”',
    'Kendrick Lamar - “Life will put many red lights in front of you, but sometimes we must push on the gas and trust God.”',
    'Angela Bassett -  “Don’t settle for average. Bring your best to the moment. Then, whether it fails or succeeds, at least you gave all you had.”',
    'Stevie Wonder - “When you\'re moving in the positive, your destination is the brightest star.”',
    'Corretta Scott King - “When the heart is right, the mind and the body will follow.”',
    'Kwame Alexander - “All that is good and accomplished in this world takes work and a little chaos.”',
    'Zora Neale Hurston - “Love makes your soul crawl out from its hiding place.”',
    'KRS-1 - “Trust in God, that\’s where the crown is at. It\’s not in what you get, it\’s what happens after that.”',
    'Daveed Diggs - History is about who tells it.',
    'Kenya Barris - Everybody - every single person - has a story. Find yours and tell it in your voice.',
    'Langston Hughes - “Hold fast to your dreams, for without them life is a broken winged bird that cannot fly.”',
    'Denzel Washington - “If you pray for rain, you gotta deal with the mud too. That\’s a part of it.”',
    'Morgan Freeman - Learning how to be still, to really be still and let life happen - that stillness becomes a radiance.',
    'Venus Williams - “You have to believe in yourself when no one else does that\'s what makes you a winner”',
    'Serena Williams - "Everyone\'s dream can come true if you just stick to it and work hard."',
    'Nat Turner - “Good communication is the bridge between confusion and clarity.”',
    'Nipsey Hustle - “Luck is just bein\’ prepared at all times, so when the door opens you\’re ready.”',
    'Trevor Noah - If you laugh with somebody, then you know you share something.',
    'Shaq - “Excellence is not a singular act, but a habit. you are what you repeatedly do”',
    'Diana Ross - “You know, you do need mentors, but in the end, you really just need to believe in yourself.”',
    'Nikki Giovanni - “Mistakes are a fact of life: It is the response to the error that counts.”',
    'Nic Stone - “You ever consider that maybe you not supposed to fit? People who make history rarely do.”',
    'Jason Reynolds - It\'s hard to be what you can\'t see.',
    'Jay Z - “A wise man told me don\'t argue with fools. Cause people from a distance can\'t tell who is who.”',
    'Questlove - The only mofos in my circle are people that I can learn from.',
    'Erykah Badu - “When you\'re performing, you\'re creating a moment.”',
    'Usain Bolt - “You have to set yourself goals so you can push yourself harder. Desire is the key to success.”',
    'Paul Robeson - "The answer to injustice is not to silence the critic but to end the injustice."',
    'Damian Lillard -"If your dreams don\'t match your actions, you can either change your dreams or change your actions."',
    'A. Philip Randolph - “Freedom is never given; it is won.”',
    'Booker T. Washington - “Character, not circumstances, makes the man.”',
    'Eldridge Cleaver - You\'re either part of the solution or you\'re part of the problem.',
    'Jim Brown - “Success is not only for the elite. Success is there for those who want it, plan for it, and take action to achieve it.”',
    'Bessie Coleman - “I refused to take no for an answer.”',
    'Bayard Rustin - “Let us be enraged about injustice, but let us not be destroyed by it.”',
    'J. Cole - “Life is a movie, pick your own role, Climb your own ladder or you dig your own hole.”',
    'Ella Baker - “We who believe in freedom cannot rest until it comes.”',
    'Naomi Osaka - “You just gotta keep going and fighting for everything, and one day you\'ll get to where you want.”',
    'Gordon Parks - “The guy who takes a chance, who walks the line between the known and unknown, who is unafraid of failure, will succeed.”',
    'Lisa Leslie - “Everyone talks about age, but it\'s not about age. It\'s about work ethic. Winning never gets old.”',
    'Maya Moore - "When you rise, when your greatness is authentic—that\'s what captures imaginations. That\'s when people see you."',
    'Jesse Owens - “One chance is all you need.”',
    'Curt Flood - “There is no such thing as bragging. You\'re either lying or telling the truth.”',
    'Madam CJ Walker - "Don\’t sit down and wait for the opportunities to come. Get up and make them."',
    'Thurgood Marshall - “In recognizing the humanity of our fellow beings, we pay ourselves the highest tribute.”',
    'James Baldwin - “You have to decide who you are and force the world to deal with you, not with its idea of you.”',
    'Dr. Martin Luther King Jr. - “If you can\'t fly then run, if you can\'t run then walk, if you can\'t walk then crawl, but whatever you do you have to keep moving forward.”',
    'Marcus Garvey - “If you have no confidence in self, you are twice defeated in the race of life.”',
    'Charles Houston - “Without education, there is no hope for our people and without hope, our future is lost.”',
    'Arthur Ashe - “Start where you are, use what you have.”',
    'John Lewis - “We may not have chosen the time, but the time has chosen us.”',
    'Fred Shuttlesworth - “You have to be prepared to die before you can begin to live.”',
    'Wilma Rudolph - “Winning is great, sure, but if you are really going to do something in life, the secret is learning how to lose.”',
    'Billie Holiday - “The difficult I\'ll do right now. The impossible will take a little while.” ',
    'Louis Armstrong - “Don\'t do nothing halfway, else you find yourself dropping more than can be picked up.”',
    'Hank Aaron - “Failure will never stand in the way of success if you learn from it.”',
    'Willie Mays - “What you are thinking, what shape your mind is in, is what makes the biggest difference of all.”',
    'Yara Shahidi - “Week-by-week you grow with your character and it\'s an interesting challenge.”',
    'Elaine Brown - “The answer was love—the love that was inside the madness. It was about not forgetting. It was about living and about dying for freedom”',
    'Aretha Franklin “If you disrespect everybody that you run into, how in the world do you think everybody\'s supposed to respect you?”',
    'William Julius Wilson - “But the person who scored well on an SAT will not necessarily be the best doctor or the best lawyer or the best businessman. These tests do not measure character, leadership, creativity, perseverance.”',
    'Duke Ellington - “Everyone prays in their own language, and there is no language that God does not understand.”',
    'Simone Biles - “To me, I go out there, and I do what I trained. We prepare so long for that moment, so it\'s just kind of exciting.”',
    'Mos Def - “Make today\'s solid ground out of yesterday\'s quicksand.”',
    'Nina Simone - “You\'ve got to learn to leave the table When love\'s no longer being served.”',
    'Beyoncé - “You can\'t appreciate the good times without the bad ones.”',
    'Simone Manuel - “If you want to shine like the sun. First you have to burn like it.”',
    'Bob Marley - “True friends are like stars; you can only recognize them when it\'s dark around you.”',
    'John Carlos - “The bottom line is, if you stay home, your message stays home with you. If you stand for justice and equality, you have an obligation to find the biggest possible megaphone to let your feelings be known.”',
    'Tommie Smith - “I don\'t think it\'s necessary to go to any game to make a stand just because you are there. The stand is made from the heart, and you can do that in the grocery store.”',
    'Samuel L. Jackson - “If you do not have courage, you may not have the opportunity to use any of your other virtues.”',
'    Bryan Stevenson - “You don\’t change the world with the ideas in your mind, but with the conviction in your heart.”',
    'Jack Johnson - “An individual action, multiplied by millions, create global change.”',
    'Frederick Pollard - “They threw rocks at me and called me all kinds of names. But I was there to play football.”',
    'Joe Louis - “A champion doesn\'t become a champion in the ring, he\'s merely recognized in the ring. His “becoming” happens during his daily routine.”',
    'Michelle Alexander - “We must build a movement for education, not incarceration. A movement for jobs, not jails. A movement that will end all forms of discrimination against people released from prison.”',
    'Toni Morrison - “If you want to fly, you have to give up the things that weigh you down.”',
    'Alice Walker - “No person is your friend who demands your silence, or denies your right to grow.”',
    'Mahmoud Abdul-Rauf -  George Washington Carver said: \'No one has the right to come into this world and go out of it without leaving distinct and legitimate reasons for having passed through it.\' So if I\'m going to be remembered for something, if I have a choice, I\'d rather be known for standing up for my principles than shooting a jump shot.',
    'Bell Hooks - "To love well is the task in all meaningful relationships, not just romantic bonds."',
    'Kimberle Crenshaw - If we aren\’t intersectional, some of us, the most vulnerable, are going to fall through the cracks.',
    'Audrey Lorde - “When I dare to be powerful, to use my strength in the service of my vision, then it becomes less and less important whether I am afraid.”', 
    'Octavia Butler - All that you touch You Change. All that you Change Changes you. The only lasting truth is Change. God is Change.',
    'Craig Hodges - “A fixation with connecting with \'friends\' online comes with the risk of disconnection with friends waiting for you to be present in the offline world.”',
    'Chinaka Hodge - “I think it’s impossible to discuss race without discussing time. And I think that the key issues that we bring up in the piece are the key things folks my age have to contend with.”',
    'Sam Cooke - “It\'s been a long time coming. But I know a change is gonna come..”',
    'Manute Bol - God guided me to America and gave me a good job. But he also gave me a heart so I would look back.',
    'Marc Bamuthi Joseph - "Healing is the goal. Healing is the work."',
    'Danny Glover - “We have to be that wedge that drives the question and asks the hard questions.”',
    'Delroy Lindo - “I think it\'s a brilliant tool to have, not only to have a sense of humor, but to be able to use humor to help one navigate life, and I tend not to be that type of person. I wish I were.”',
    'Eartha Kitt - “The price we pay for being ourselves is worth it.”',
    'Ruby Bridges - Don\'t follow the path. Go where there is no path and begin the trail. When you start a new trail equipped with courage, strength and conviction, the only thing that can stop you is you!',
    'Lena Horne - “Don\'t be afraid to feel as angry or as loving as you can, because when you feel nothing, it\'s just death.”',
    'Ida B Wells - “The way to right wrongs is to turn the light of truth upon them.”',
    'Solomon Northup - “Is everything right because the law allows it?”',
    'Stokely Charmichael “There is a higher law than the law of government. That\'s the law of conscience.”',
    'Nelson Mandela - “There can be no greater gift than that of giving one’s time and energy to help others without expecting anything in return.”',
    'Winnie Mandela - “We have a shared destiny, a shared responsibility to save the world from those who attempt to destroy it.”',
    'Ossie Davis - Any form of art is a form of power; it has impact, it can affect change. It can not only move us, it makes us move.',
    'Lateefah Simon - “Working together, with righteousness and hope, we can create a country that is about reverence and reconciliation, not a world of shackles and concrete cells.”',
    'Queen Latifah - “You have to stand for what you believe in and sometimes you have to stand alone.”',
    'Tarana Burke - “Get up. Stand up. Speak up. Do something.”',
    'Barbara Jordan “We, as human beings, must be willing to accept people who are different from ourselves.”',
    'Van Jones - “The message is going to be the same. It\'s very simple. We\'re either going to turn to each other or on each other.”',
    'Carter Woodson - “No man knows what he can do until he tries.”',
    'Boots Riley - “No one has a copyright on working-class struggles.”',
    'Mae C. Jemison - “Never limit yourself because of others\' limited imagination; never limit others because of your own limited imagination.”',
    'Patrisse Cullors - We will not stop fighting until every single Black life is provided the type of love and support we so desperately deserve.”',
    'Johnson H. Johnson - “To succeed, one must be creative and persistent.”',
    'Jaylen Brown - “Embarrassment is where growth happens.”',
    'Ella Fitzgerald - “It isn\'t where you came from, it\'s where you\'re going that counts.”',
    'E.D. Nixon - "Your spark can become a flame and change everything."',
    'Ralph D. Abernathy - “It\'s not the name they call you, it\'s the name you answer to.”',
    'Earl Lloyd - “You can do amazing things when people love you.”',
    'Doc Rivers - “I don\'t think you should ever run from history. You should learn from it and embrace it.”',
    'Hattie McDaniel - “Putting a little time aside for clean fun and good humor is very necessary to relieve the tensions of our time.”',
    'Frank Robinson - “Be anything you want to be, but don\'t be dull.”',
    'Forest Whitaker - "I try to be like a forest: revitalizing and constantly growing."',
    'Moses Malone - “You got to work hard whatever you\'re doing and try to be number one and take pride in what you\'re doing.”',
    'Mary Jackson - "Sometimes they are not aware of the number of black scientists, and don\'t even know of the career opportunities until it is too late."',
    'Katherine Johnson - “You lose your curiosity when you stop learning.”',
    'Dorothy Vaughn - “Separate and equal are two different things. Just \'cause it\'s the way, doesn\'t make it right.”',
    'Mahershala Ali - “I always hope to be a better person tomorrow than today.”',
    'Ryan Coogler - “I think a lot of the source of how people are treated depends on the fact if someone recognizes them as a human being or not, you know what I mean?”',
    'Ta-Nehisi Coates - “The soul is part of the body. The mind is part of the body. When folks do physical violence to black people, to black bodies in this country, the soul as we construe it is damaged, too - the mind is damaged, too.”',
    'Sojourner Truth - “Life is a hard battle anyway. If we laugh and sing a little as we fight the good fight of freedom, it makes it all go easier. I will not allow my life\'s light to be determined by the darkness around me.”',
    'Nikole Hannah-Jones - “While history is what happened, it is also, just as important, how we think about what happened and what we unearth and choose to remember about what happened.”',
    'Garrett Morgan - If you can be the best, then why not try to be the best?',
    'George Crum - "The future will be the child of the past and the present, even if a rebellious child."',
    'Dr. James E. West - “I spend a great deal of the hours that I’m awake within myself. You never want to stop doing it, especially when it’s a pleasure.”',
    'Anthony Anderson - "Be ready for when your time comes, you will have that window of opportunity, so seize the moment and capitalize on it."',
    'Neymar - "There is no pressure when you are making a dream come true."',
    'Patricia Bath - "Believe in the power of truth."',
    'Elijah McCoy - “Dream the impossible because dreams do come true.”',
    'Kylian Mbappe - ‘We must always set the bar high, otherwise we do not progress.“',
    'Jean-Michel Basquiat - “​​I don\'t listen to what art critics say. I don\'t know anybody who needs a critic to find out what art is.”',
    'Claudette Colvin - “I always tell young people to hold on to their dreams. And sometimes you have to stand up for what you think is right even if you have to stand alone.”',
    'Alice Coachman - “I\'ve always believed that I could do whatever I set my mind to do.”',
    'Mario Balotelli - "You can\'t delete racism. It\'s like a cigarette. You can\'t stop smoking if you don\'t want to, and you can\'t stop racism if people don\'t want to. But I\'ll do everything I can to help."',
    'Fritz Pollard - It Was Evident In My First Year At Akron Back In 1919, That They Didn\'t Want Blacks In There Getting That Money. And Here I Was, Playing And Coaching And Pulling Down The Highest Salary In Pro Football.',
    'Kehinde Wiley - Art is about changing what we see in our everyday lives and representing it in such a way that it gives us hope.',
    'Sadio Mane - ​​"If you want to be successful when you play, you have to be free in your mind, and that happens if you know that everything is taken care of- you just focus on the fútbol."',
    'Ayọ Tometi - “If things aren\'t working for us, it is our duty to rise up.”',
    'James Forten - “Whilst so much is being done in the world, to ameliorate the condition of mankind, and the spirit of Freedom is marching with rapid strides and causing tyrants to tremble, may America awake from the apathy in which she has long slumbered.”',
    'Neil deGrasse Tyson - “Creativity is seeing what everyone else sees, but then thinking a new thought that has never been thought of before and expressing it somehow.”',
    'Quincy Jones - Every day, my daddy told me the same thing. \'Once a task is just begun, never leave it till it\'s done. Be the labor great or small, do it well or not at all.',
    'Djimon Hounsou - “Until you are somewhat comfortable and confident and embrace who you are, as a person, you can\'t possibly love somebody else because you don\'t like yourself that much.”'
    'Shani Davis - “Anything is possible. But not until you believe you can achieve it.”',
    'Vonetta Flowers - “When they tell him to do something he doesn\'t want to do, he\'ll reach up and take off his hearing aid.”',
    'Zion Wright - "You get back what you put in."',
    'Ashleigh Johnson - “I’m so proud to represent my communities] because I hope they see themselves where we are, 17 and find some hope. find some passion. find some energy from our team.”',
    'Claressa Shields - “If you\'re dedicated to something and you put the time in, why should anyone have an opinion on it?”',
    'Gabby Douglas - “Hard days are the best because that\'s when champions are made.”',
    'Ibtihaj Muhammad - “It\'s important to me that youth everywhere, no matter their race, religion, or gender, know that anything is possible with perseverance.”',
    'Fanny Jackson Coppin - “Love wins when everything else will fail.”',
    'Dr. Dorothy Lavinia Brown - “I am proud to be a role model not because I have done so much, but to say to young people that it can be done.”',
    'Leontyne Price - “Be black, shine, aim high.”',
    'Dwayne Johnson - “All successes begin with Self-Discipline. It starts with you.',
    'Chaka Khan - “You\'ve just got to follow your own path. You have to trust your heart and you have to listen to the warnings.”',
    'Samuel Eto\'o - Only we can make racism stop. Nobody is going to do it for us.',
    'George Weah - “Education is a continual process, it\'s like a bicycle... If you don\'t pedal you don\'t go forward.”',
    'Mo Salah - "When I have a chance to go back to my village, I always remind myself where I came from."',
    'Steve Harvey - “Your reality is yours. Stop wasting time looking at someone else\'s reality while doing nothing about yours.”',
    'Bubba Wallace - “We all bleed the same color. It hurts when we bleed.”',
    'Charlie Sifford - “If you try hard enough, anything can happen.”',
    'Jackie Joyner-Kersee - “It is better to look ahead and prepare than to look back and regret.”',
    'John Amaechi - Knowing yourself, knowing where you want to get, combining those things gives you the pragmatic steps.',
    'Debi Thomas - “Just because you didn\'t start out perfect doesn\'t mean you can\'t have an excellent result in the end.”',
    'Leon Brown - “It all begins and ends in your mind. What you give power to, has power over you, if you allow it.”',
    'Ernie Davis - “Football is just a game. What matters is what you play for.”',
    'Matthew Henson - “The path is not easy, the climbing is rugged and hard, but the glory at the end is worthwhile.”',
];

    void newQuestion() {
      if (_questionNumber < quotes.length - 1) {
      _questionNumber++;
      }
      print(_questionNumber);
      print(_questionNumber);

  }