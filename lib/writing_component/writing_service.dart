import 'package:angular2/core.dart';

// TODO: Try to find a way to represent and display quotions
// within the body of the writing

class Writing {
  String _title;
  List<String> _body;
  DateTime _date;
  Map<int, String> _quotations;

  Writing(this._title, this._body, [this._date, this._quotations]);

  String get title => _title;
  List<String> get body => _body;
  DateTime get date => _date;
  Map<int, String> get quotations => _quotations;

  List<List<String>> bodyWithQuotations() {
    List<List<String>> ret = new List<List<String>>();
    for (int i = 0; i < _body.length; i++) {
      if (quotations.containsKey(i)) {
        ret.add([_body[i], _quotations[i]]);
      } else {
        ret.add([_body[i], null]);
      }
    }
    return ret;
  }
}

@Injectable()
class WritingService {
  final List<Writing> _writings = [
    new Writing(
      'Iam Primum Omnium Satis',
      [
     'Iam primum omnium satis constat Troia capta in ceteros saevitum esse Troianos, duobus, Aeneae Antenorique, et vetusti iure hospitii et quia pacis reddendaeque Helenae semper auctores fuerant, omne ius belli Achivos abstinuisse; casibus deinde variis Antenorem cum multitudine Enetum, qui seditione ex Paphlagonia pulsi et sedes et ducem rege Pylaemene ad Troiam amisso quaerebant, venisse in intimum maris Hadriatici sinum, Euganeisque qui inter mare Alpesque incolebant pulsis Enetos Troianosque eas tenuisse terras. Et in quem primo egressi sunt locum Troia vocatur pagoque inde Troiano nomen est: gens universa Veneti appellati. Aeneam ab simili clade domo profugum sed ad maiora rerum initia ducentibus fatis, primo in Macedoniam venisse, inde in Siciliam quaerentem sedes delatum, ab Sicilia classe ad Laurentem agrum tenuisse. Troia et huic loco nomen est. Ibi egressi Troiani, ut quibus ab immenso prope errore nihil praeter arma et naves superesset, cum praedam ex agris agerent, Latinus rex Aboriginesque qui tum ea tenebant loca ad arcendam vim advenarum armati ex urbe atque agris concurrunt. Duplex inde fama est. Alii proelio victum Latinum pacem cum Aenea, deinde adfinitatem iunxisse tradunt: alii, cum instructae acies constitissent, priusquam signa canerent processisse Latinum inter primores ducemque advenarum evocasse ad conloquium; percontatum deinde qui mortales essent, unde aut quo casu profecti domo quidve quaerentes in agrum Laurentinum exissent, postquam audierit multitudinem Troianos esse, ducem Aeneam filium Anchisae et Veneris, cremata patria domo profugos, sedem condendaeque urbi locum quaerere, et nobilitatem admiratum gentis virique et animum vel bello vel paci paratum, dextra data fidem futurae amicitiae sanxisse. Inde foedus ictum inter duces, inter exercitus salutationem factam. Aeneam apud Latinum fuisse in hospitio; ibi Latinum apud penates deos domesticum publico adiunxisse foedus filia Aeneae in matrimonium data.',
    'Ea res utique Troianis spem adfirmat tandem stabili certaque sede finiendi erroris. Oppidum condunt; Aeneas ab nomine uxoris Lavinium appellat. Brevi stirpis quoque virilis ex novo matrimonio fuit, cui Ascanium parentes dixere nomen.',
    'Bello deinde Aborigines Troianique simul petiti. Turnus rex Rutulorum, cui pacta Lavinia ante adventum Aeneae fuerat, praelatum sibi advenam aegre patiens simul Aeneae Latinoque bellum intulerat. Neutra acies laeta ex eo certamine abiit: victi Rutuli: victores Aborigines Troianique ducem Latinum amisere. Inde Turnus Rutulique diffisi rebus ad florentes opes Etruscorum Mezentiumque regem eorum confugiunt, qui Caere opulento tum oppido imperitans, iam inde ab initio minime laetus novae origine urbis et tum nimio plus quam satis tutum esset accolis rem Troianam crescere ratus, haud gravatim socia arma Rutulis iunxit. Aeneas adversus tanti belli terrorem ut animos Aboriginum sibi conciliaret nec sub eodem iure solum sed etiam nomine omnes essent, Latinos utramque gentem appellavit; nec deinde Aborigines Troianis studio ac fide erga regem Aeneam cessere. Fretusque his animis coalescentium in dies magis duorum populorum Aeneas, quamquam tanta opibus Etruria erat ut iam non terras solum sed mare etiam per totam Italiae longitudinem ab Alpibus ad fretum Siculum fama nominis sui implesset, tamen cum moenibus bellum propulsare posset in aciem copias eduxit. Secundum inde proelium Latinis, Aeneae etiam ultimum operum mortalium fuit. Situs est, quemcumque eum dici ius fasque est super Numicum flumen: Iovem indigetem appellant.',
      ],
      new DateTime.now(),
      {2: 'Oppidum condunt; Aeneas ab nomine uxoris Lavinium appellat.'},
      ),
    ];

  List<Writing> get writings => _writings;
}
