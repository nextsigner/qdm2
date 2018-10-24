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
        text:'<b>Elemento QML</b><br><b>2Rectangle{}</b>'
        anchors.centerIn: r 
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }

    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.p(0, 800)?1.0:0.0
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
        controles.asec=[0,10,31]
        var at=''
        //Pr
        at+='Elemento Rectangle'
        at+=e(10)
        //Req
        at+='Para utilizar este elemento es necesario importar la librerìa QtQuick. Para este curso te recomendamos la versiòn 2.0 '

        at+=e(10)
        //Q
        at+='Es un elemento que nos permite dibujar un area rectangular en la aplicaciòn.'
        //PP
        at+='Sus propiedades principales son color, radius y border.'

        at+=e(10)
        //PN
        at+='La propiedad COLOR se utiliza para definir el color del area.  El tipo de dato que se requiere para esta propiedad es un cadena de texto, un dato del tipo STRING ya sea entre comillas dobles o simples que contenga el nombre de un color o el valor hexadecimal de un color.

                La propiedad radius se utiliza para definir el radio que redondearà las esquinas del rectàngulo. Esta propiedad se define mediante un tipo de dato NUMERO ENTERO.

                La propiedad border se utiliza para dibujar un borde alrededor del area. Esta propiedad opera con 2 valores principales,  COLOR y ANCHO. El color lo definimos con un tipo de dato de color con un STRING y el ancho del borde lo definimos con un dato del tipo NUMERO ENTERO para setear el grosor del trazo o linea que dibujarà el borde.
'
        at+=e(10)
        //PQ
        at+='Este elemento nos permite crear areas y secciones con las caracterìsticas de color de fondo, esquinas redondeadas y bordes, en los cuales puedes incluir elementos internos, mostrar, animar y distribuir en multiples elementos para dar un estilo a otros elementos o a la aplicaciòn.'

        at+=e(10)
        //Ie
        at+='Hay que tener en cuenta algo muy importante. Atenciòn!. Este es el primer elemento QML que vemos que hereda del elemento QtQuick Item. ¿Que significa esto?  Esto quiere decir que este elemento Rectangle{} ha sido creado como un elemento declarativo, tomando como base, a partir o desde un elemento Item. Por este motivo es que todas las propiedades o mètodos que se utilizan para el elemento Item son heredados por el elemento Rectangle{}. Si quieres modificar la posiciòn, las dimensiones, opacidad y visibilidad del àrea, lo puedes hacer modificando las mismas propiedades que se utilizan para lograr estos cambios en el elemento Item.'


        xT.at=at.replace(/\n/g, ' ')
    }
}
