import 'package:flutter/material.dart';
import 'package:gamify/data.dart';

class ScrollableGameWidget extends StatelessWidget
{
    late double _height;
    late double _width;
    late bool isTitle;
    final List<Game> gamesData;

    ScrollableGameWidget(this._height,this._width,this.isTitle,this.gamesData);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return SizedBox(height: _height,
                      width: _width,
                   child: ListView(scrollDirection: Axis.horizontal,children:gamesData.map((e){
                     return Container(
                       height: _height,
                       width: _width*0.30,
                     child: Padding(
                       padding:  EdgeInsets.only(right: _width*.03),
                       child: Column(
                         mainAxisSize: MainAxisSize.max,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [Container(height: _height*0.80,width: _width*.45
                           ,decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             image: DecorationImage(fit: BoxFit.fill,
                                 image: NetworkImage(e.coverImage.url))
                           ),),
                         isTitle?Text(e.title,maxLines: 2,style: TextStyle(fontSize: _height*0.066),):Container()
                         ],),
                     ),
                     );

                   }).toList(),),
     );
  }


}