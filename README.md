<h1 align="center">
📄<br>Coffee Machine
</h1>
<h4 align="center">
Atividade proposta pela disciplina de M.I de Circuitos Digitais utilizando a metodologia PBL.
</h4>
<h2 align="center">
Protótipo de uma máquina de café, utilizando os conceitos de máquinas de estados finitos e a linguagem de descrição de hardware Verilog.
</h2>

Características gerais do protótipo:
- 💻 Existem sensores de nível mínimo (SN) no compartimento de água e sensores de presença nos compartimentos de cápsulas (SP) e de recepção de copos (SR). O protótipo foi pensado para ambientes em que os usuários devem inserir seus próprios copos para evitar descartes desnecessários de copos plásticos. Os sensores devem monitorar situações indesejáveis, sinalizar através de uma interface de saída e impedir o acionamento da bombagem/pressurização de água e do circuito de aquecimento.
- 💻 Somente serão permitidas leituras de cédulas ou moedas de R$1,00, R$2,00, R$5,00 e R$10,00 que correspondem aos preços dos produtos supracitados (café expresso, café com leite, chá de camomila e cappuccino).
- 💻 A moeda inserida deve estar de acordo com o produto selecionado e de acordo com valores permitidos. Senão uma mensagem de erro deve ser exibida na interface de saída e a cédula ou as moedas devolvidas ao cliente. Neste caso os circuitos internos devem ser impedidos de funcionar.
- 💻 Em caso de escolha assertiva dos produtos e do valor, na sequência os circuitos internos devem ser acionados. O circuito de aquecimento é acionado 2 segundos após o início da bombagem/pressurização de água (tempo necessário para que ocorra a pressurização do compartimento contendo a cápsula). Em seguida, o produto escolhido é disponibilizado ao cliente pelo dispensador. 

O protótipo precisa atender os seguintes requisitos:
- ✨ O display deverá mostrar que o circuito está em modo de espera;
- ✨ O circuito deverá ter um display que informe ao usuário o produto escolhido, o valor total das cédulas inseridas e os códigos de erro associados às ações;
- ✨ As SAÍDAS serão representadas por LEDs na plataforma de desenvolvimento (Kit LEDSCPLD);
- ✨ Se uma cédula diferente das reconhecidas for depositada, a máquina deverá sinalizar imediatamente esta ocorrência no display e devolver todas as cédulas;
- ✨ Uma vez iniciado o processo de venda, o circuito deve dispor de alguma forma para não ficar travado no processo;
- ✨ Em caso de falta d’àgua, falta de cápsulas ou ausência de copo, uma mensagem de erro de identificação do problema deve ser exibida no display para que possa ser corrigido;
- ✨ Caso o valor depositado seja diferente do valor do produto escolhido, a máquina deverá informar essa ocorrência no display, devolver as cédulas coletadas e retornar ao modo de espera.

Especificação do Produto:
- 📝 Formalização detalhada do circuito proposto (entrega parcial);
- 📝 Implementação da estrutura proposta utilizando a ferramenta Quartus II, utilizando verilog estrutural (exceto para módulos básicos descrevendo elementos biestáveis), bem como síntese do sistema no Kit de desenvolvimento LEDS-CPLD;
- 📝 Estruturas de testes, simulações e demais elementos utilizados para validação do funcionamento do circuito;
- 📝 Relatório técnico, seguindo as orientações a seguir;



