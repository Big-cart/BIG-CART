List<String> result = [];
Map covidData = {
  "diagnose": "You May Have COVID-19.",
  "Advice":
      """Stay Home and IsolateIf you must be around others, wear a well-fitting mask.and
      Drink fluids to avoid dehydration.""",
  "Cure": "Paracetamol , Azithromycin, VIT-C. ",
  "Note":
      "This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map influenzaData = {
  "diagnose": "You May Have Influenza ",
  "Advice": " Plenty of sleep, Drink plenty of fluids like water "
      "or clear soups to prevent dehydration",
  "Cure": " Cetirizine Hidrochloride , VIT-C , Paracetamol ",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map malariaData = {
  "diagnose": "You May Have MALARIA ",
  "Advice": " Rest, Encourage the person to rest comfortably."
      "Ensure they drink plenty of fluids to prevent dehydration.",
  "Cure": " Chloroquine Phosphate.",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map hIV_AIDSData = {
  "diagnose": "You May Have HIV/AIDS ",
  "Advice":
      " Never share needles or syringes, Avoid blood contact, Avoid Forbidden Affairs",
  "Cure": " Antiretroviral therapy",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map hPyloriOrColonData = {
  "diagnose": "You May Have H-Pylori Or Colon ",
  "Advice":
      " Diet,Avoid spicy or greasy foods ,Smoking cessation ,Avoid Stress Situation.",
  "Cure": " Clarithromycine, Metronidazole, Amoxicillin. ",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map smallpoxData = {
  "diagnose": "You May Have Smallpox ",
  "Advice": " Isolate Yourself, Drink Plenty of Fluids, Avoid Showering.",
  "Cure": " Acyclovir ",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map choleraData = {
  "diagnose": "You May Have Cholera ",
  " Advice":
      " Drink plenty of fluids to prevent dehydration ,Avoid greasy, spicy, sugary foods, Wash Your Hands Frequently.",
  "Cure": " Ciprofloxacin , ORS",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map asthmaData = {
  "diagnose": "You May Have Asthma ",
  "Advice": " Avoid Cold Air, Avoid Heavy Exercise , Avoid Smoking.",
  "Cure": " Albuterol Sulfate.",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map jaundiceData = {
  "diagnose": "You May Have Jaundice ",
  "Advice": " Drink Plenty of Water, "
      "Eat A balanced Diet with many friuts and vegetables, Avoid Fatty Fried Foods. ",
  "Cure": " Barbiturates.",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
Map goutData = {
  "diagnose": "You May Have Gout ",
  "Advice":
      " Limit Foods High in purines, Loss weight , Drink plenty of fluids.",
  "Cure": " Colchicine.",
  "Note":
      " This Result is Not accurate, For an Accurate Result Consult a Doctor "
};
String unfoundSelection =
    ''' Your Selected Symptoms That Are Not Found, You May Consult a Doctor in Our 
Consult Page''';
List<String> covid = [
  "Fever",
  "Cough",
  "loose of smell",
  "shortness of breath",
  "Diarrhea",
  "Headache",
];

List<String> influenza = [
  "Fever",
  "chill",
  "Cough",
  "sore throat",
  "runny nose",
  "Diarrhea",
  "vomiting",
  "Tiredness",
  "Headache",
];

List<String> malaria = [
  "Fever",
  "chill",
  "sweating",
  "Headache",
  "vomiting",
  "Nausea",
  "muscle ache",
];
List<String> hIV_AIDS = [
  "flu",
  "Fever",
  "Headache",
  "rash",
  "fatigue",
];
List<String> hPyloriOrColon = [
  "Diarrhea",
  "bloating",
  "burning stomach",
  "Nausea",
  "vomiting",
  "Indigestion",
];
List<String> smallpox = [
  "Fever",
  "rash",
  "bumps on the skin"
      "Headache",
  "vomiting",
  "fatigue",
];
List<String> cholera = [
  "Diarrhea",
  "vomiting",
  "thrust",
  "decreased urination",
  "fatigue",
  "low blood pressure",
];
List<String> asthma = [
  "shortness of breath",
  "Cough",
  "Wheezing",
  "Chest tightness",
];
List<String> jaundice = [
  "yellowing of the skin",
  "dark urine",
  "pale stools",
  "Fever",
  "fatigue",
  "Nausea",
  "vomiting",
  "loss of appetite",
  "Abdominal pain Upper right side",
];
List<String> gout = [
  "tenderness",
  "stiffness",
  "swelling",
];
List<String> symptoms = [
  "Fever",
  "Cough",
  "loose of smell",
  "shortness of breath",
  "Diarrhea",
  "Headache",
  "chill",
  "sore throat",
  "runny nose",
  "vomiting",
  "Tiredness",
  "sweating",
  "Nausea",
  "muscle ache",
  "flu",
  "rash",
  "fatigue",
  "bloating",
  "burning stomach",
  "Indigestion",
  "bumps on the skin",
  "thrust",
  "decreased urination",
  "low blood pressure",
  "Wheezing",
  "Chest tightness",
  "yellowing of the skin",
  "dark urine",
  "pale stools",
  "loss of appetite",
  "Abdominal pain Upper right side",
  "tenderness",
  "stiffness",
  "swelling",
];
