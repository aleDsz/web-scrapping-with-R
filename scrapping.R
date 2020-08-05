deps <- c("httr", "xml2", "readr")

for (dep in deps) {
  if (!(dep %in% installed.packages())) {
    install.packages(dep)
  }
}

for (dep in deps) {
  do.call(library, list(dep))
}

actual_date <- Sys.Date()
year <- format(actual_date, "%Y")
uri <- paste0("https://feriadosbancarios.febraban.org.br/feriados.asp?ano=", year)

request <- GET(uri, add_headers("Content-Type" = "text/html; charset=utf-8"))
# response <- content(request)

response <- "
<html>
<head>
<title>Feriados - FEBRABAN Federa&ccedil;&atilde;o Brasileira de Bancos</title>
<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
<link href=css/style_buscabanco.css rel=stylesheet type='text/css'>
<script Language='JavaScript'>
<!--
function FrontPage_Form1_Validator(theForm)
{
if ((theForm.uf.selectedIndex<1)&&(theForm.dia.selectedIndex<1)&&(theForm.mes.selectedIndex<1))
      {
    window.alert('Escolha dia/mes/ano para ver os feriados de Todos Municípios do Brasil, \n pressione (?) para ajuda ');
        theForm.uf.focus();
        return(false);
      }  


  if (theForm.municipio.value.length>3)
  {
if (theForm.uf.selectedIndex<1)
      {
    window.alert('Digite o nome ou parte do nome do Município e escolha obrigatoriamente uma UF, \n pressione (?) para ajuda ');
        theForm.uf.focus();
        return(false);
      }  
   }


  




  return (true);
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf('#')!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf('?'))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+'.location=''+selObj.options[selObj.selectedIndex].value+''');
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<link href='css/style_buscabanco.css' rel='stylesheet' type='text/css'>

<meta name='description' content='Busca agências e Postos bancários. Pesquisa feriados bancários.'>
<meta name='keywords' content='busca banco bancos bancário banqueiro sistema guia localização mapa pesquisa agência agências posto PAB PAB´s feriados feriado série histórica star tarifas endereço telefone'>
</head>
<body leftmargin='0' topmargin='0' marginwidth='0' marginheight='0' >

<table width='76%' border='0' align='center' cellpadding='0' cellspacing='0' id='Table_3'>
  <tr class='separador'>
    <td width='50%' ><img src='../images/logo-buscabanco_p.jpg'></td>
    <td width='50%'  class='td_right_bold'><span >FERIADOS BANC&Aacute;RIOS E EXPEDIENTE ESPECIAL AO P&Uacute;BLICO</span></td>
  </tr>
  
<tr  >
    <td class='separador'>
    </td>
    
    <td ALIGN=RIGHT class='separador'>
      <TABLE BORDER=0 CELLPADDING=10>
         <TR>
              <td  height='18' VALIGN = BOTTOM align='right'>
          <a href='feriados_show.asp'><input type='button' class='botao' value='Consultar Feriados Municipais' />
</a>

        </td>
           </TR>
      </TABLE>
    </td>

  </tr>
  

<tr>
<td colspan=2>	


  <table width='80%' border='0' cellspacing='0' cellpadding='0' align='center'>

      <tr>
        <td>
    <table cellspacing='0' border=0 cellpadding='0'>
             
              <tr>
                <td  colspan=2 valign='middle'>
        
        <table>
        <tr>
        <td HEIGHT=60px>
          <h2 class='titulo'>Feriados Federais&nbsp;</h2>
        </td>
        <td>
          <form name='form1'>
                  <select name='menu1' class='form-control'  onChange='MM_jumpMenu('parent',this,0)' class='titulo'>
                    
                    <option value='feriados.asp?ano=2020' selected>
                      2020
                      </option>
                    
                    <option value='feriados.asp?ano=2019' >
                      2019
                      </option>
                    
                    <option value='feriados.asp?ano=2018' >
                      2018
                      </option>
                    
                    <option value='feriados.asp?ano=2017' >
                      2017
                      </option>
                    
                    <option value='feriados.asp?ano=2016' >
                      2016
                      </option>
                    
                    <option value='feriados.asp?ano=2015' >
                      2015
                      </option>
                    
                    <option value='feriados.asp?ano=2014' >
                      2014
                      </option>
                    
                    <option value='feriados.asp?ano=2013' >
                      2013
                      </option>
                    
                    <option value='feriados.asp?ano=2012' >
                      2012
                      </option>
                    
                    <option value='feriados.asp?ano=2011' >
                      2011
                      </option>
                    
                    <option value='feriados.asp?ano=2010' >
                      2010
                      </option>
                    
                    <option value='feriados.asp?ano=2009' >
                      2009
                      </option>
                    
                    <option value='feriados.asp?ano=2008' >
                      2008
                      </option>
                    
                    <option value='feriados.asp?ano=2007' >
                      2007
                      </option>
                    
                    <option value='feriados.asp?ano=2006' >
                      2006
                      </option>
                    
                    <option value='feriados.asp?ano=2005' >
                      2005
                      </option>
                    
                    <option value='feriados.asp?ano=2004' >
                      2004
                      </option>
                    
                    <option value='feriados.asp?ano=2003' >
                      2003
                      </option>
                    
                    <option value='feriados.asp?ano=2002' >
                      2002
                      </option>
                    
                    <option value='feriados.asp?ano=2001' >
                      2001
                      </option>
                    
                    <option value='feriados.asp?ano=    ' >
                          
                      </option>
                    
                  </select>
                </form>
        </td>
        </tr>
        </table>
        
        </td>
        
              </tr>
            </table>
          
      
          <table width='100%' border='0' cellpadding='2' cellspacing='0' class='fundo-table2'>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>01
                de
                janeiro  </td>
              <td width='20%' class='td_left'>(
                  quarta
                )
                </td>
              <td width='65%' class='td_left'>Dia Mundial da Paz</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>24
                de
                fevereiro</td>
              <td width='20%' class='td_left'>(
                  segunda
                )
                </td>
              <td width='65%' class='td_left'>Carnaval</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>25
                de
                fevereiro</td>
              <td width='20%' class='td_left'>(
                  terça
                )
                </td>
              <td width='65%' class='td_left'>Carnaval</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>10
                de
                abril    </td>
              <td width='20%' class='td_left'>(
                  sexta
                )
                </td>
              <td width='65%' class='td_left'>Sexta-Feira da Paixão</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>21
                de
                abril    </td>
              <td width='20%' class='td_left'>(
                  terça
                )
                </td>
              <td width='65%' class='td_left'>Tiradentes</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>01
                de
                maio     </td>
              <td width='20%' class='td_left'>(
                  sexta
                )
                </td>
              <td width='65%' class='td_left'>Dia do Trabalho</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>11
                de
                junho    </td>
              <td width='20%' class='td_left'>(
                  quinta
                )
                </td>
              <td width='65%' class='td_left'>Corpus Christi</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>07
                de
                setembro </td>
              <td width='20%' class='td_left'>(
                  segunda
                )
                </td>
              <td width='65%' class='td_left'>Independência do Brasil</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>12
                de
                outubro  </td>
              <td width='20%' class='td_left'>(
                  segunda
                )
                </td>
              <td width='65%' class='td_left'>Nossa Srª Aparecida</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>02
                de
                novembro </td>
              <td width='20%' class='td_left'>(
                  segunda
                )
                </td>
              <td width='65%' class='td_left'>Finados</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>15
                de
                novembro </td>
              <td width='20%' class='td_left'>(
                  domingo
                )
                </td>
              <td width='65%' class='td_left'>Proclamação da República</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>25
                de
                dezembro</td>
              <td width='20%' class='td_left'>(
                  sexta
                )
                </td>
              <td width='65%' class='td_left'>Natal</td>
            </tr>
            
          </table>
         <br>
          <span class='Estilo_nota'>Obs: Nos termos do Artigo 5&ordm; da Resolu&ccedil;&atilde;o 2.932, de 28.02.2002, do Conselho Monet&aacute;rio Nacional, os feriados mencionados acima n&atilde;o s&atilde;o considerados dias &uacute;teis para fins de opera&ccedil;&otilde;es praticadas no mercado financeiro e de presta&ccedil;&atilde;o de informa&ccedil;&otilde;es ao Banco Central do Brasil, incluindo s&aacute;bados e domingos.
          
          Expediente ao p&uacute;blico em hor&aacute;rio diferenciado (Resolu&ccedil;&atilde;o  n&ordm; 2932, de 28 de fevereiro de 2002).</span><br>
          <br>          <br>          <br>
          <table width='100%' border='0' align='left' cellpadding='2' cellspacing='0' class='fundo-table2'>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>26
                de
                fevereiro</td>
              <td width='20%' class='td_left'> (
              quarta
                )</td>
              <td width='65%' class='td_left'>Quarta-Feira de Cinzas</td>
            </tr>
            
            <tr>
              <td width='3%' class='td_left'>&nbsp;</td>
              <td width='22%' height='22' class='td_left'>31
                de
                dezembro</td>
              <td width='20%' class='td_left'> (
              quinta
                )</td>
              <td width='65%' class='td_left'>Último dia útil do ano (Não haverá expediente ao público)</td>
            </tr>
            
          </table>

       </TR>
       <TR>
       <TD>
          <br>
           <span class='Estilo_nota'>A FEBRABAN emitirá recomendação aos bancos, quanto ao horário de atendimento das agências bancárias na quarta-feira de cinzas. No último dia útil do ano, não haverá expediente ao público, admitindo-se apenas operações entre instituições financeiras e serviços de compensação de cheques e outros papéis.</span></td>
      </TD>
    </tr>
    </table>

<BR>
</td>

</TR>
<TR >
<TD COLSPAN=2>
<BR>
<BR>
<BR>
</TD>

</TR>
<TR >
<TD COLSPAN=2 class=separador>

</TD>

</TR>
<TR  HEIGHT=60>
<TD><SPAN CLASS=Estilo2>© FEBRABAN - Federação Brasileira de Bancos</span>
</td>
<td align=right></TD>
</tr>
</table>

<script src='http://www.google-analytics.com/urchin.js' type='text/javascript'>
</script>
<script type='text/javascript'>
_uacct = 'UA-3461385-4';
urchinTracker();
</script>
</body>
</html>
"

html <- read_html(response)
table <- xml_find_all(html, "//table[@class = 'fundo-table2']")
rows <- sapply(table, function(x) xml2::xml_children(x))[[1]]
dates <- data.frame()

for (row in rows) {
  columns <- xml_children(row)
  columns <- columns[c(2, 4)]

  date <- xml_text(columns[1])
  description <- xml_text(columns[2])

  date <- trimws(date)
  date <- gsub("\n", "", date)
  date <- strsplit(date, " ")[[1]]
  date <- date[date != ""]
  date <- paste(date, collapse = " ")
  date <- paste0(date, " de ", year)

  date <- readr::parse_date(date, "%d de %B de %Y", locale = locale("pt"))

  dates <- rbind(
    dates,
    data.frame(
      date = date,
      description = description
    )
  )
}

print(dates)
