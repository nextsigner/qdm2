import QtQuick 2.0
import  "../../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2

    //1
    Text{
        id:x1
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Elemento QML</b><br><b>Rectangle{}</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }


    //2
    Row{
        id:x2
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Column{
            spacing: app.fs*0.2
            Text{
                text:'<b>Còdigo QML - Elemento Rectangle</b>'
                font.pixelSize: app.fs
                color: app.c2
            }
            Row{
                spacing: app.fs*0.5
                Text{
                    text:'import'
                    font.pixelSize: app.fs
                    color: app.c2
                }
                Text{
                    text:'QtQuick'
                    font.pixelSize: app.fs
                    color: app.c2
                    Marco{id:mm1;padding:app.fs*0.1}
                }
                Text{
                    id:txtVer
                    text:'2.0'
                    font.pixelSize: app.fs
                    color: app.c2
                    Marco{id:mm2;padding:app.fs*0.1}
                }
            }
            Text{
                id:txt1
                text:'Rectangle{\n       widht:'+parseInt(rect1.width)+'\n       heigth:'+parseInt(rect1.height)
                font.pixelSize: app.fs
                color: app.c2
            }
            Text{
                text:'       color:"'+rect1.color+'"'
                font.pixelSize: app.fs
                color: app.c2
                Marco{id:mr1;padding:app.fs*0.1}
                Marco{
                    id:me1;padding:app.fs*0.1
                    opacity:0.0
                    Behavior on opacity{NumberAnimation{duration:500}}
                    Text{
                        text:'STRING\nCadena de Texto'
                        font.pixelSize: app.fs*0.5
                        color: app.c2
                        horizontalAlignment: Text.AlignHCenter
                        anchors.left: parent.right
                        anchors.leftMargin: app.fs*0.5
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            Text{
                text:'       radius:'+parseInt(rect1.radius)
                font.pixelSize: app.fs
                color: app.c2
                Marco{id:mr2;padding:app.fs*0.1}
                Marco{
                    id:me2;padding:app.fs*0.1
                    opacity:0.0
                    Behavior on opacity{NumberAnimation{duration:500}}
                    Text{
                        text:'NUMERO\nENTERO'
                        font.pixelSize: app.fs*0.5
                        color: app.c2
                        horizontalAlignment: Text.AlignHCenter
                        anchors.left: parent.right
                        anchors.leftMargin: app.fs*0.5
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            Text{
                text:'       border.color:"'+rect1.border.color+'"'
                font.pixelSize: app.fs
                color: app.c2
                Marco{id:mr3;padding:app.fs*0.1}
                Marco{
                    id:me3;padding:app.fs*0.1
                    opacity:0.0
                    Behavior on opacity{NumberAnimation{duration:500}}
                    Text{
                        text:'STRING\nCadena de Texto'
                        font.pixelSize: app.fs*0.5
                        color: app.c2
                        horizontalAlignment: Text.AlignHCenter
                        anchors.left: parent.right
                        anchors.leftMargin: app.fs*0.5
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            Text{
                text:'       border.width:'+parseInt(rect1.border.width)
                font.pixelSize: app.fs
                color: app.c2
                Marco{id:mr4;padding:app.fs*0.1}
                Marco{
                    id:me4;padding:app.fs*0.1
                    opacity:0.0
                    Behavior on opacity{NumberAnimation{duration:500}}
                    Text{
                        text:'NUMERO\nENTERO'
                        font.pixelSize: app.fs*0.5
                        color: app.c2
                        horizontalAlignment: Text.AlignHCenter
                        anchors.left: parent.right
                        anchors.leftMargin: app.fs*0.5
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            Text{
                text:'}'
                font.pixelSize: app.fs
                color: app.c2
            }
        }
        Xv{
            id:xV4
            tvh:app.fs
            width: app.fs*16
            height: r.height-app.fs*8
            clip:false
            anchors.verticalCenter: parent.verticalCenter
            Rectangle{
                id:rect1
                width: app.fs*6
                height: app.fs*5
                x:parseInt(app.fs)
                y: parseInt(app.fs)+xV4.tvh
                radius: tRad.running?arrrads[tRad.v]:app.fs*0.5
                color: tColors.running?arrcolors[tColors.v]:'red'
                border.color: tBC.running?arrbcs[tBC.v]:'yellow'
                border.width: bor
                property int rad: 8
                property int bor: tBW.running?arrbws[tBW.v]:app.fs*0.2
                property var arrcolors:['red', 'pink', '#ff8833', 'green', 'gray']
                property var arrrads:[app.fs*0.5, app.fs*2, app.fs, app.fs*0.2, app.fs*1.5]
                property var arrbcs:['pink', '#ff8833', 'green', 'blue', 'gray', 'brown', app.c2]
                property var arrbws:[app.fs*0.1, app.fs*0.3, 1, app.fs*0.8, app.fs*0.5,app.fs*1.5]
                Behavior on radius{NumberAnimation{duration:650}}
                Behavior on bor{NumberAnimation{duration:500}}
                Timer{
                    id:tColors
                    running: false
                    repeat: true
                    interval: 650
                    property int v: 0
                    onTriggered: {
                        if(v<rect1.arrcolors.length-1){
                            v++
                        }else{
                            v=0
                        }
                    }
                }
                Timer{
                    id:tRad
                    running: false
                    repeat: true
                    interval: 1000
                    property int v: 0
                    onTriggered: {
                        if(v<rect1.arrrads.length-1){
                            v++
                        }else{
                            v=0
                        }
                    }
                }
                Timer{
                    id:tBC
                    running: false
                    repeat: true
                    interval: 1000
                    property int v: 0
                    onTriggered: {
                        if(v<rect1.arrbcs.length-1){
                            v++
                        }else{
                            v=0
                        }
                    }
                }
                Timer{
                    id:tBW
                    running: true
                    repeat: true
                    interval: 1000
                    property int v: 0
                    onTriggered: {
                        if(v<rect1.arrbws.length-1){
                            v++
                        }else{
                            v=0
                        }
                    }
                }

                Text{
                    id:td1
                    text:'Color\nde\nFondo'
                    font.pixelSize: app.fs*0.6
                    color: 'black'
                    anchors.centerIn: parent
                    horizontalAlignment: Text.AlignHCenter
                }
                Text{
                    id:td2
                    text:'Esquinas\nRedondeadas'
                    font.pixelSize: app.fs*0.5
                    color: app.c2
                    anchors.left: parent.right
                    anchors.leftMargin: app.fs*0.5
                    Marco{padding:app.fs*0.2}
                    Rectangle{
                        width: app.fs*0.5
                        height: 1
                        color:app.c2
                        anchors.right: parent.left
                    }
                }
                Text{
                    id:td3
                    text:'Bordes'
                    font.pixelSize: app.fs*0.5
                    color: app.c2
                    anchors.left: parent.right
                    anchors.leftMargin: app.fs*0.5
                    anchors.verticalCenter: parent.verticalCenter
                    Marco{padding:app.fs*0.2}
                    Rectangle{
                        width: app.fs*0.5
                        height: 1
                        color:app.c2
                        anchors.right: parent.left
                    }
                }

                Loader{//Carga Componente de id item
                    id:loaderAn
                    objectName:  'Item 0'
                    sourceComponent: item
                    width: parent.width
                    height: parent.height
                    Behavior on opacity{NumberAnimation{duration:500}}
                    property bool animar: false
                    property bool estilo: false
                }
            }
        }
    }


    //3
    Row{
        id:x3
        anchors.centerIn: r
        opacity:0.0
        spacing:app.fs
        property int fsh: r.height*0.045
        Behavior on opacity{NumberAnimation{duration:500}}
        Column{
            spacing: x3.fsh*0.15
            Text{
                text:'<b>Còdigo QML - Elemento Rectangle</b>'
                font.pixelSize: x3.fsh
                color: app.c2
            }
            Text{
                text:'import QtQuick 2.0'
                font.pixelSize: x3.fsh
                color: app.c2
            }
            Text{
                text:'Rectangle{'
                font.pixelSize: x3.fsh
                color: app.c2
            }
            Item{
                width: colTextos100.width
                height: colTextos100.height
                Marco{
                    padding:app.fs*0.5
                    Text{
                        text:'Propiedades\nHeredadas\ndel\nElemento Item{}'
                        font.pixelSize: x3.fsh*0.65
                        color: app.c2
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.right
                        anchors.leftMargin:app.fs
                        horizontalAlignment: Text.AlignHCenter
                        Marco{padding:app.fs*0.25}
                        Rectangle{
                            width: app.fs
                            height: app.fs*0.1
                            color:app.c2
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.left
                        }
                    }
                }
                Column{
                    id:colTextos100
                    spacing: x3.fsh*0.15
                    Text{
                        text:'       x:'+parseInt(rect2.x)+'\n       y:'+parseInt(rect2.y)
                        font.pixelSize: x3.fsh
                        color: app.c2
                    }
                    Text{
                        text:'       widht:'+parseInt(rect2.width)+'\n       heigth:'+parseInt(rect2.height)
                        font.pixelSize: x3.fsh
                        color: app.c2
                    }
                    Text{
                        text:'       opacity:'+parseFloat(rect2.opacity).toFixed(1)+'\n       visible:'+rect2.visible+'    '
                        font.pixelSize: x3.fsh
                        color: app.c2
                    }
                }
            }
            Text{
                text:'       color:"'+rect1.color+'"'
                font.pixelSize: x3.fsh
                color: app.c2
            }
            Text{
                text:'       radius:'+parseInt(rect1.radius)
                font.pixelSize: x3.fsh
                color: app.c2
            }
            Text{
                text:'       border.color:"'+rect1.border.color+'"'
                font.pixelSize: x3.fsh
                color: app.c2
            }
            Text{
                text:'       border.width:'+parseInt(rect1.border.width)
                font.pixelSize: x3.fsh
                color: app.c2
            }
            Text{
                text:'}'
                font.pixelSize: x3.fsh
                color: app.c2
            }
        }

        Xv{
            id:v3
            tvh:app.fs
            width: app.fs*16
            height: r.height-app.fs*8
            clip:false
           anchors.verticalCenter: parent.verticalCenter
            Rectangle{
                id:rect2
                width: app.fs*6
                height: app.fs*5
                x:parseInt(app.fs)
                y: parseInt(app.fs)+xV4.tvh
                radius: app.fs*0.75
                color: '#ff8833'
                border.color: 'red'
                border.width: app.fs*0.5
                property var arrdim: [app.fs*3, app.fs*2, app.fs*4.5]
                property var arrpos: [app.fs*1, app.fs*3, app.fs*2]
                property var arrops: [0.5, 1.0,0.1, 0.8]
                Behavior on x{NumberAnimation{duration:500}}
                Behavior on y{NumberAnimation{duration:500}}
                Behavior on width{NumberAnimation{duration:500}}
                Behavior on height{NumberAnimation{duration:500}}
                Behavior on opacity{NumberAnimation{duration:500}}
                Marco{
                    id:marcoItem; padding: 2
                    Rectangle{
                        width: app.fs
                        height: 1
                        color:app.c2
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.right
                    }
                    Text{
                        text:'Elemento\nItem{}\nBase'
                        font.pixelSize: app.fs*0.5
                        color:app.c2
                        horizontalAlignment: Text.AlignHCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.right
                        anchors.leftMargin: app.fs
                        Marco{padding: app.fs*0.25}
                    }

                }

                Text{
                    id:txtmi
                    text:'Rectangle Herada\nde Item{}\nsus Propiedades\ny Mètodos'
                    font.pixelSize: app.fs*0.35
                    color:'white'
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.right
                    anchors.leftMargin: app.fs
                    anchors.centerIn: parent
                }
                Timer{
                    id:tDim
                    running: false
                    repeat: true
                    interval: 1000
                    property int v: 0
                    onTriggered: {
                        if(v<rect2.arrdim.length-1){
                            v++
                        }else{
                            v=0
                        }
                        rect2.width=rect2.arrdim[v]
                        rect2.height=rect2.arrdim[v]
                    }
                }
                Timer{
                    id:tPos
                    running: false
                    repeat: true
                    interval: 1000
                    property int v: 0
                    onTriggered: {
                        if(v<rect2.arrpos.length-1){
                            v++
                        }else{
                            v=0
                        }
                        rect2.x=rect2.arrpos[v]
                        rect2.y=rect2.arrpos[v]
                    }
                }
                Timer{
                    id:tOp
                    running: false
                    repeat: true
                    interval: 1555
                    property int v: 0
                    onTriggered: {
                        if(v<rect2.arrops.length-1){
                            v++
                        }else{
                            v=0
                        }
                        rect2.opacity=rect2.arrops[v]
                    }
                }
                Timer{
                    id:tVis
                    running: false
                    repeat: true
                    interval: 2155
                    property int v: 0
                    onTriggered: {
                        rect2.visible=!rect2.visible
                    }
                }
            }
        }

    }



    Component{
        id:item
        Item{
            id:xItem
            property string t: 'Item'
            Grid{
                anchors.centerIn: parent
                spacing: app.fs*0.1
                columns: 3
                Repeater{
                    model: ['#cc00ff', '#36ff88', '#ccff33', '#9900aa', '#0099ff', '#00ff55']
                    Rectangle{
                        id:rect100
                        width: app.fs
                        height: width
                        color: modelData
                        radius:xItem.parent.estilo?app.fs*0.2:0
                        border.width:xItem.parent.estilo?app.fs*0.1:1
                        border.color: app.c2
                        SequentialAnimation{
                            id:an100
                            running: xItem.parent.animar
                            loops: Animation.Infinite
                            property bool rot: false
                            onStopped: rot=!rot
                            onRunningChanged: {
                                if(!running){
                                    rect100.rotation=0
                                }
                            }
                            NumberAnimation {
                                target: rect100
                                property: "rotation"
                                from: 0
                                to: 160
                                duration: 500
                                easing.type: Easing.OutInQuad
                            }
                            NumberAnimation {
                                target: rect100
                                property: "rotation"
                                from: 160
                                to: 30
                                duration: 1000
                                easing.type: Easing.OutInQuad
                            }
                            NumberAnimation {
                                target: rect100
                                property: "rotation"
                                from: 30
                                to: 280
                                duration: 300
                                easing.type: Easing.OutInQuad
                            }
                        }
                    }
                }
            }
            Timer{
                running: true
                repeat: true
                interval: 500
                property bool vi: true
                onTriggered: {


                }
            }
        }
    }

    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.p(0, 6)?1.0:0.0
            x2.opacity=app.p(6, 187)?1.0:0.0
            mm1.opacity=app.p(11.5, 15)?1.0:0.0
            mm2.opacity=app.p(15, 22)?1.0:0.0

            if(app.p(39, 41)){
                mr1.opacity=1.0
                mr2.opacity=0.0
                mr3.opacity=0.0
                mr4.opacity=0.0
            }else if(app.p(41, 44)){
                mr1.opacity=0.0
                mr2.opacity=1.0
                mr3.opacity=0.0
                mr4.opacity=0.0
            }else if(app.p(44, 48)){
                mr1.opacity=0.0
                mr2.opacity=0.0
                mr3.opacity=1.0
                mr4.opacity=1.0
            }else{
                mr1.opacity=0.0
                mr2.opacity=0.0
                mr3.opacity=0.0
                mr4.opacity=0.0
            }

            if(app.p(48, 80)){
                me1.opacity=1.0
                me2.opacity=0.0
                me3.opacity=0.0
                me4.opacity=0.0
                tColors.start()
                tRad.stop()
                tBC.stop()
                tBW.stop()
            }else if(app.p(80, 100)){
                me1.opacity=0.0
                me2.opacity=1.0
                me3.opacity=0.0
                me4.opacity=0.0
                tColors.stop()
                tRad.start()
                tBC.stop()
                tBW.stop()
            }else if(app.p(120, 129)){
                me1.opacity=0.0
                me2.opacity=0.0
                me3.opacity=1.0
                me4.opacity=0.0
                tColors.stop()
                tRad.stop()
                tBC.start()
                tBW.stop()
            }else if(app.p(129, 144)){
                me1.opacity=0.0
                me2.opacity=0.0
                me3.opacity=0.0
                me4.opacity=1.0
                tColors.stop()
                tRad.stop()
                tBC.stop()
                tBW.start()
            }else{
                me1.opacity=0.0
                me2.opacity=0.0
                me3.opacity=0.0
                me4.opacity=0.0
                tColors.stop()
                tRad.stop()
                tBC.stop()
                tBW.stop()
            }

            if(app.p(158, 161)){
                td1.opacity=1.0
                td2.opacity=0.0
                td3.opacity=0.0
            }else if(app.p(161, 164)){
                td1.opacity=1.0
                td2.opacity=1.0
                td3.opacity=0.0
            }else if(app.p(164, 167)){
                td1.opacity=1.0
                td2.opacity=1.0
                td3.opacity=1.0
            }else{
                td1.opacity=0.0
                td2.opacity=0.0
                td3.opacity=0.0
            }

            //Comienzo a explicar sobre los elementos internos.
            loaderAn.opacity=app.p(168, 187)?1.0:0.0
            loaderAn.animar=app.p(173, 180)
            loaderAn.estilo=app.p(180, 187)

            x3.opacity=app.p(187, 800)?1.0:0.0
             tDim.running=app.p(251, 800)
            tPos.running=app.p(251, 800)
            tOp.running=app.p(251, 800)
            tVis.running=app.p(251, 800)
            marcoItem.visible=!app.p(251, 800)
            txtmi.visible=!app.p(251, 800)

        }
    }
    function e(n){
        var sp=''
        for(var i=0;i<n;i++){
            sp+='   '
        }
        return sp
    }
    Component.onCompleted: {
        controles.asec=[0,10,31,47,80,121.5, 129, 144, 168, 187, 251]
        var at=''
        //Pr
        at+='Elemento Rectangle'
        at+=e(25)
        //Req
        at+='Para utilizar este elemento es necesario importar la librerìa QtQuick. Para este curso te recomendamos la versiòn 2.0 '

        at+=e(25)
        //Q
        at+='Es un elemento que nos permite dibujar un area rectangular en la aplicaciòn.'
        at+=e(10)
        //PP
        at+='Sus propiedades principales son color, radius y border.'

        at+=e(15)
        //PN
        at+='La propiedad COLOR se utiliza para definir el color del area.  El tipo de dato que se requiere para esta propiedad es un cadena de texto, un dato del tipo STRING ya sea entre comillas dobles o simples que contenga el nombre de un color o el valor hexadecimal de un color.

                La propiedad radius se utiliza para definir el radio que redondearà las esquinas del rectàngulo. Esta propiedad se define mediante un tipo de dato NUMERO ENTERO.

                La propiedad border se utiliza para dibujar un borde alrededor del area. Esta propiedad opera con 2 valores principales,  COLOR y ANCHO. El color lo definimos con un tipo de dato de color con un STRING y el ancho del borde lo definimos con un dato del tipo NUMERO ENTERO para setear el grosor del trazo o linea que dibujarà el borde.
'
        at+=e(25)
        //PQ
        at+='Este elemento nos permite crear areas y secciones con las caracterìsticas de color de fondo, esquinas redondeadas y bordes, en los cuales puedes incluir elementos internos, mostrar, animar y distribuir en multiples elementos para dar un estilo a otros elementos o a la aplicaciòn.'

        at+=e(25)
        //Ie
        at+='Hay que tener en cuenta algo muy importante. Atenciòn!. Este es el primer elemento QML que vemos que hereda del elemento QtQuick Item. ¿Que significa esto?  Esto quiere decir que este elemento Rectangle{} ha sido creado como un elemento declarativo, tomando como base, a partir o desde un elemento Item. Por este motivo es que todas las propiedades o mètodos que se utilizan para el elemento Item son heredados por el elemento Rectangle{}. Si quieres modificar la posiciòn, las dimensiones, opacidad y visibilidad del àrea, lo puedes hacer modificando las mismas propiedades que se utilizan para lograr estos cambios en el elemento Item.'


        xT.at=at.replace(/\n/g, ' ')
    }
}
