drop database TechSolutions;

create database TechSolutions;

use TechSolutions;

create table tbUsuarios(
	cod_usuario int not null auto_increment primary key,
	nome_usuario varchar(30) not null,
	email_usuario varchar(50) not null,
	celular char(11) not null,
	senha varchar(255) not null,
	data_nasc date,
	data_cadastro datetime,
	login datetime,
	dt_alteracao datetime
);

create table tbAdms(
	cod_adm int not null auto_increment primary key,
	nome_adm varchar (60),
	cargo varchar (60),
	cod_usuario int not null,
	foreign key (cod_usuario) references tbUsuarios(cod_usuario)
);

create table tbTestes(
	cod_tst int not null auto_increment primary key,
	questoes varchar(500) not null,
	tipo_vestibular varchar(50),
	ano date,
	materia_vestibular varchar(50),
	pontos int default 0
);

create table tbPerfis(
	cod_perf int not null auto_increment primary key,
	pontuacao int not null default 0,
	cod_tst int not null,
	cod_usuario int not null,
	cod_adm int not null,
	cod_servico int not null,
	cod_prova int not null,
	foreign key (cod_tst) references tbTestes(cod_tst),
	foreign key (cod_usuario) references tbUsuarios(cod_usuario),
	foreign key (cod_adm) references tbAdms(cod_adm)
);

CREATE TABLE tbQuestions (
	cod_question int not null auto_increment primary key,
	text_question text,
	option_a varchar(255),
	option_b varchar(255),
	option_c varchar(255),
	option_d varchar(255),
	option_e varchar(255),
	correct_option char(1),
	exam_year int,
	semestre char(1) check(semestre in("1","2"))
);

CREATE TABLE tbImagens (
    cod_image int not null auto_increment primary key,
    cod_question int not null,
    image_data varchar(255),
    foreign key (cod_question) references tbQuestions(cod_question)
);

-- INSERT TABLE tbQUESTIONS PROVA 2023 1 SEMESTRE

INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'51',
    'Os pronomes são importantes elementos textuais, pois auxiliam na construção de sentido do texto, evitando a repetição de informações e estabelecendo conexões entre os envolvidos no ato comunicativo. Isso ocorre com os pronomes destacados no texto, os quais se referem, respectivamente, a',
    'A) leitor; leitores e autor; oxigênio; e oceanos.',
    'B) oceano; autores; oxigênio; e ameaças.',
    'C) leitor; humanidade; clima; e Terra.',
    'D) leitores e autor; leitor; parte; e importância.',
    'E) autor e leitores; humanidade; parte do oxigênio; e ameaças.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'52',
    'Para alcançar o objetivo comunicativo de um texto, várias estratégias são utilizadas. Elas são escolhidas levando-se em consideração os elementos formadores do ato de comunicação, como o público-alvo, o contexto social, o código de composição e o canal de circulação da mensagem. Com base nessas informações, assinale a alternativa que apresenta uma análise correta sobre o texto lido.',
    'A) O uso recorrente do presente do indicativo evidencia que as ações realizadas são atemporais, ou seja, verdadeiras e imutáveis independentemente do momento em que estamos.',
    'B) O texto, embora informativo, traz frases longas e linguagem difícil que o tornam inacessível a um público leigo, já que é destinado a pesquisadores acadêmicos.',
    'C) Perguntas dirigidas ao leitor e linguagem coloquial são utilizadas a fim de conquistar atenção para as informações desenvolvidas e despertar o pensamento reflexivo.',
    'D) A narração predomina no texto, e o narrador procura facilitar a construção das imagens relacionadas às ações dos oceanos expostas por ele.',
    'E) A hashtag (#), utilizada pelo autor, fere a gramática normativa adequada ao gênero desenvolvido, pois o texto deve circular em canais de comunicação formais como revistas científicas.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'53',
    'Gênero textual é um conceito adotado para definir os textos que circulam em nossa sociedade. Cada gênero cumpre uma função diferente e deve se adequar ao contexto comunicativo em que está inserido. Analisando o texto apresentado, conclui-se corretamente que se trata de',
    'A) notícia, por narrar as tentativas de salvar os oceanos das inúmeras ameaças geradas pela poluição.',
    'B) entrada de enciclopédia, por expor dados objetivos, em linguagem denotativa, sobre a crise climática.',
    'C) crônica, por tecer comentários pessoais em linguagem coloquial sobre a realidade de mares e oceanos.',
    'D) anúncio publicitário, por tentar convencer os consumidores a comprarem produtos feitos de materiais reutilizáveis.',
    'E) campanha social, por apresentar informações a fim de mobilizar o público sobre a necessidade de proteger os oceanos.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'54',
    'De acordo com o texto, é correto afirmar que',
    'A) os oceanos se dividem em três tipos: os fechados, os continentais e os abertos.',
    'B) os mares são mais profundos que os oceanos, cujas profundezas são conhecidas.',
    'C) os termos “oceanos” e “mares” são sinônimos, pois representam territórios com formas e tamanhos similares.',
    'D) os mares concentram todas as águas existentes no planeta Terra, daí o nome Planeta Azul.',
    'E) os oceanos se diferenciam dos mares, pois aqueles têm maiores extensões que estes.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'55',
    'Cada alternativa apresenta um resumo biográfico. Assinale aquela em que se identifica a mesma mensagem positiva defendida pelo Aquaman em filmes, conforme descrito no texto.',
    'A) Getúlio Dornelles Vargas, presidente do Brasil. Entre suas realizações, instituiu uma série de direitos aos trabalhadores, como carteira profissional, salário-mínimo, 13o salário e férias remuneradas, motivo pelo qual passou a ser chamado de “o pai dos pobres”.',
    'B) Maria Esther Andion Bueno, conhecida como “rainha do tênis”. Maior nome do tênis brasileiro, foi eleita a melhor tenista latino-americana do século XX, sendo considerada um exemplo de como superar dificuldades para obter sucesso.',
    'C) César Augusto Cielo Filho, nadador brasileiro. Recordista e vencedor de diversas competições, conquistou a medalha de ouro nos 50 metros livre nos Jogos Olímpicos, prova mais rápida da natação. Está entre os atletas brasileiros com mais medalhas em Campeonatos Mundiais de qualquer esporte.',
    'D) Isabel Cristina Leopoldina Augusta Micaela Gabriela Rafaela Gonzaga, a Princesa Isabel. Foi a responsável pela assinatura das leis do Ventre Livre e Áurea que, respectivamente, libertava os filhos de escravizados nascidos no Brasil e abolia a escravidão no país.',
    'E) Bruno da Cunha Araújo Pereira, indigenista brasileiro, dedicou-se à proteção dos povos indígenas e da Floresta Amazônica, combatendo ações ilegais de invasores, como garimpeiros e madeireiros, a fim de promover a garantia de direitos a esses povos, como saúde, educação e autonomia.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'56',
    'Entre os peixes mais velozes do mundo, encontra-se o marlim-negro, que pode atingir a velocidade máxima de 129 km/h. Considere que o Aquaman esteja em uma missão. Para passar despercebido pelo sistema de monitoração por sonar de um navio, o herói precisa nadar na mesma velocidade máxima que esse peixe. Admitindo que o consumo de calorias é diretamente proporcional à velocidade, para manter a velocidade mencionada, o Aquaman gasta, em milhões de quilocalorias, por segundo, aproximadamente,',
    'A) 2,9.',
    'B) 5,6.',
    'C) 10,3.',
    'D) 20,1.',
    'E) 37,1.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'57',
    'O gasto calórico mencionado no texto está relacionado, entre outros fatores, à força de arrasto, que é uma força de resistência que atrapalha o movimento de um corpo em um fluido. A força de arrasto, por sua vez, é diretamente proporcional à densidade do fluido. Sabendo que a densidade da água do oceano aumenta com a profundidade, a maneira mais eficiente para que o Aquaman reduza seu gasto calórico, sem diminuir a sua velocidade, é nadar',
    'A) mais próximo ao fundo do oceano.',
    'B) mais próximo à superfície do oceano.',
    'C) batendo os pés e os braços ao mesmo tempo.',
    'D) no ponto médio entre o fundo e a superfície do oceano.',
    'E) batendo apenas os pés, mas mantendo os braços junto ao corpo.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'58',
    'As relações alimentares entre os diversos organismos de um ecossistema costumam ser representadas por meio de diagramas denominados teias alimentares, ou redes alimentares. Essas teias são compostas de diversas cadeias interligadas por meio de setas, que unem os componentes da comunidade entre si, evidenciando suas relações quanto aos diferentes níveis tróficos. Considerando a teia alimentar representada, é correto afirmar que',
    'A) as lulas são consumidores terciários, pois se alimentam de leões-marinhos, orcas e pinguins.',
    'B) os seres do zooplâncton constituem o primeiro nível trófico e formam a base das cadeias alimentares aquáticas.',
    'C) as focas apresentam diferentes hábitos alimentares e ocupam diferentes níveis tróficos.',
    'D) os peixes pequenos e o krill pertencem ao mesmo nível trófico, pois se alimentam diretamente do fitoplâncton.',
    'E) o extermínio dos pinguins ocasionará a diminuição da população de orcas, pois estas se alimentam daqueles mamíferos.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'59',
    'Em relação aos seres vivos da teia alimentar marinha apresentada, é correto afirmar que',
    'A) os seres do zooplâncton e os copépodes são macroscópicos, vivem em suspensão na água e produzem seu próprio alimento.',
    'B) os seres do fitoplâncton são vegetais que sobrevivem nas regiões escuras dos oceanos sem a incidência de raios solares.',
    'C) a baleia-azul é um mamífero sem dentes, que filtra a água do mar de onde retira grandes quantidades de alimento.',
    'D) os peixes pequenos e as lulas competem com a baleia azul e com as focas pelo seu alimento.',
    'E) os pinguins se alimentam principalmente de copépodes e de peixes pequenos.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'60',
    'Na narrativa apresentada, o personagem Armandinho demonstra ter uma habilidade importante para a vida em sociedade ao expressar',
    'A) humildade, já que não se importa com os mais necessitados.',
    'B) vergonha, porque deve caminhar na rua diante dos colegas.',
    'C) empatia, pois se conscientiza sobre e realidade daqueles em condições diferentes da sua.',
    'D) acanhamento, porque deve usar tênis velho na rua diante de outras crianças.',
    'E) autonomia, pois, diante do constrangimento de ver crianças descalças, ele doa seu tênis.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'61',
    'Examinando a charge, é correto afirmar que ela representa',
    'A) a hostilidade do ambiente marinho ao ser humano, mas que abriga em segurança a vida de peixes e plantas.',
    'B) o cenário apocalíptico de um vazamento nuclear e as consequências de uma sociedade sem ONGs de proteção ambiental.',
    'C) o resultado de uma sociedade ambientalmente sustentável, que propõe soluções viáveis para a convivência entre os seres vivos.',
    'D) a poluição de mares e rios, que coloca em risco a manutenção da vida nesses ambientes e gera a necessidade de intervenções protetivas.',
    'E) a urgência com que o curso dos rios deve ser alterado para garantir a sobrevivência de peixes e humanos atingidos pela poluição do ar e das águas.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'62',
    'Leia a definição de tsunâmi, extraída do site da Comissão Brasileira de Sítios Geológicos (SIGEP). Dentre as origens desse fenômeno, é correto citar',
    'A) o aquecimento anormal das águas do oceano Atlântico.',
    'B) os movimentos de rotação e de translação do planeta Terra.',
    'C) as ações de correntes marítimas frias de origem equatorial.',
    'D) os tremores sísmicos no assoalho oceânico e/ou vulcanismo.',
    'E) os deslocamentos dos oceanos existentes no núcleo interno do nosso planeta.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'63',
    'Sobre o processo de absorção física de sequestro de carbono, é correto afirmar que ocorre, predominantemente,',
    'A) próximo à costa, devido ao aumento de temperatura que ocorre em águas rasas.',
    'B) em águas profundas, devido à circulação da água que promove o transporte de nutrientes pelos oceanos.',
    'C) próximo à costa, devido às alterações na salinidade da água, resultantes do grande volume de precipitações.',
    'D) em águas profundas, devido à alteração na densidade da água, promovida pela variação de temperatura e de salinidade da água.',
    'E) em águas profundas, devido à circulação da água junto a outras com substâncias como NaCl, O2, CO2 e CaCO3, em temperatura constante.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'64',
    'No processo de absorção biológico do sequestro de carbono, há',
    'A) a retirada de dióxido de carbono da água pelo fitoplâncton por meio da fotossíntese, formando glicose.',
    'B) animais marinhos que convertem carbonato de cálcio em bicarbonato para a formação de conchas.',
    'C) a formação de recifes de corais, devido à alteração na salinidade pela presença de cloreto de sódio.',
    'D) o transporte de nutrientes para o zooplâncton a fim de realizar a fotossíntese e construir suas conchas.',
    'E) a preservação na salinidade da água devido à formação de gelo, à ebulição, à precipitação e à descarga fluvial.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'65',
    'Sobre o fenômeno descrito no texto, é correto afirmar que',
    'A) o grande cinturão de algas sargaços se deve a uma combinação de vários fatores, dentre os quais estão o aumento da taxa de gás carbônico produzido pela fotossíntese e o excesso de carboidratos liberados por animais, como filhotes de tartarugas e centenas de espécies de peixes.',
    'B) a grande quantidade de algas sargaços flutuante no oceano recebe o nome de floresta tropical dourada por ser uma vegetação densa, formada por caules, raízes e folhas entrelaçadas, com dezenas de metros de comprimento, que servem como habitat de muitos organismos marinhos.',
    'C) as algas sargaços, em grande quantidade, podem causar alguns problemas na navegação ao prejudicar as hélices e os motores dos navios, além de emitir mau cheiro devido à decomposição dessas algas acumuladas nas praias.',
    'D) as algas sargaços são utilizadas como matéria-prima na fabricação de papel, antibióticos, cosméticos e sabão; na fermentação alcoólica para a produção de vinho e saquê; e na reciclagem do lixo.',
    'E) as algas sargaços provocam o fenômeno denominado maré vermelha, responsável pela mortandade de peixes, de gaivotas e de outros animais, devido às substâncias tóxicas eliminadas na água.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'66',
    'A partir das informações apresentadas, pode-se concluir corretamente que',
    'A) o sequestro de carbono ocorre quando crustáceos e ostras fazem os processos de descalcificação, acelerando os efeitos das mudanças climáticas.',
    'B) a eliminação de metais pesados nos ecossistemas aquáticos marinhos é pouco prejudicial aos animais marinhos, em decorrência de seus resistentes e especializados sistemas de filtração e excreção de impurezas.',
    'C) a poluição dos oceanos causada por substâncias tóxicas utilizadas nas atividades de mineração é benéfica para as cadeias alimentares dos ecossistemas de mangues e recifes.',
    'D) a pesca predatória ocorre quando a remoção de uma espécie de peixe é feita em um ritmo maior do que a taxa de reprodução da espécie para repor sua população.',
    'E) os plásticos, dentre os diversos tipos de poluentes que afetam os mares, têm a grande vantagem de permanecer pouco tempo no ambiente.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'67',
    'O oceano é um corpo contínuo de água salgada que recobre mais de 70% da superfície terrestre. Sua importância para a vida no planeta Terra é significativa. Porém, todos os dias são despejados nesse corpo d’água milhões de litros de esgotos sanitários não tratados. Esse despejo constitui-se em uma grande ameaça para a vida marinha, bem como para as pessoas que vivem e tiram seu sustento dessas águas. A melhor forma de minimizar esse impacto é',
    'A) despejar os esgotos sanitários nos rios interiores.',
    'B) lançar os esgotos sanitários nos lençóis freáticos.',
    'C) armazenar os esgotos sanitários nas lagoas costeiras.',
    'D) jogar os esgotos sanitários nos lagos das usinas hidrelétricas.',
    'E) tratar os esgotos sanitários antes de despejá-los no oceano.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'68',
    'A poluição marinha é um problema cada vez mais grave em todo o mundo, à medida que aumenta sistematicamente todos os anos por conta do descarte irregular de diferentes tipos de resíduos e por conta da falta de medidas sustentáveis. No entanto, esse problema pode ser revertido ou, pelo menos, amenizado por meio de medidas mais responsáveis do ponto de vista ambiental. Assinale a alternativa que apresenta ações as quais indivíduos e empresas deveriam adotar para evitar a poluição marinha.',
    'A) A utilização de microplásticos na produção de artigos de higiene pessoal, roupas e cosméticos, porque essas partículas, lançadas ao mar pelos esgotos, servem de alimentos para os seres vivos marinhos.',
    'B) O descarte do lixo reciclável em locais inadequados, pois isso facilita o retorno da matéria-prima à cadeia produtiva a fim de se transformar no mesmo produto ou em produtos diferentes dos originais.',
    'C) A substituição de copos, talheres, canudos e garrafas descartáveis por produtos reutilizáveis a fim de preservar os ecossistemas durante sua vida útil e também após o descarte.',
    'D) A utilização de sacolinhas plásticas para empacotar as compras no supermercado, pois não prejudicam o meio ambiente e são recicladas para a alimentação da fauna marinha.',
    'E) O estímulo à produção de objetos descartáveis a fim de diminuir o consumo de recursos naturais e de reduzir o volume de lixo no ambiente.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'69',
    'Entre as consequências das Grandes Navegações, estão',
    'A) o domínio espanhol nos oceanos Atlântico e Pacífico; e a imposição de condições políticas, comerciais e geográficas específicas para as colônias.',
    'B) a colonização da Antártida; e a descoberta de territórios desabitados no hemisfério Sul, como a Oceania.',
    'C) a assinatura do Tratado de Madri; e a disputa pelas ilhas do Pacífico, travada entre Portugal e Espanha.',
    'D) o avanço da Inglaterra sobre os territórios conquistados pelos portugueses; e a Guerra dos Cem Anos.',
    'E) a assinatura do Tratado de Tordesilhas; e a chegada dos portugueses ao território do atual Brasil.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'70',
    'Há milhares de anos, o transporte marítimo tem sido fundamental para o comércio. Hoje a maior parte do comércio internacional é feita por vias marítimas. Os gráficos apresentam a participação dos meios de transporte no comércio mundial. Esses dados são obtidos de acordo com o uso de cada um deles no translado das exportações. Analisando os gráficos, o percentual do comércio mundial realizado por meio de transporte marítimo,',
    'A) em 2010, foi maior que o dobro da soma dos percentuais do transporte aéreo e dos outros transportes.',
    'B) em 2010, foi igual ao triplo daquele registrado pelos outros meios de transporte.',
    'C) de 2010 para 2019, aumentou 10,5%, ultrapassando aquele efetuado por meio do transporte aéreo.',
    'D) em 2019, foi superior ao quíntuplo daquele registrado por meio de transporte aéreo.',
    'E) em 2019, foi 14% menor que a soma dos percentuais do transporte aéreo e dos outros transportes.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'71',
    'De acordo com o texto, é correto afirmar que',
    'A) glândula tireoide sintetiza hormônios sem a utilização do micronutriente iodo, a fim de garantir a manutenção da temperatura corporal e a ocorrência de bócio ou papo.',
    'B) os hormônios T3 e T4, produzidos pela tireoide, prejudicam o crescimento físico e neurológico, assim como a manutenção do fluxo normal de energia no corpo.',
    'C) a iodação do sal para consumo humano no Brasil deve ser suspensa, principalmente para crianças e idosos, a fim de manter a baixa prevalência de DDI.',
    'D) o uso de sal de cozinha iodado e o alto consumo de alimentos de origem marinha, além de leite, ovos e algumas frutas, estão entre as causas do aumento dos casos de DDI.',
    'E) uma criança com deficiência de iodo pode apresentar, em seu desenvolvimento, baixo crescimento dos ossos e deficiência intelectual.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'72',
    'O texto menciona a obtenção de um produto usado no preparo de alimentos. Esse produto é obtido por processo',
    'A) físico, denominado vaporização.',
    'B) físico, denominado filtração.',
    'C) físico, denominado decantação.',
    'D) químico, denominado evaporação.',
    'E) químico, denominado ebulição.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'73',
    'No preparo de um alimento, foi adicionado 1,5 g de NaCl. De acordo com o valor estabelecido pela Anvisa para a iodação do sal de cozinha, a quantidade mínima de iodo, em mg, adicionada ao alimento, foi',
    'A) 0,01.',
    'B) 0,02.',
    'C) 1,50.',
    'D) 3,00.',
    'E) 4,50.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'74',
    'A partir das informações dadas para o elemento iodo, pode-se afirmar, corretamente, que apresenta',
    'A) 53 prótons.',
    'B) 53 nêutrons.',
    'C) 74 elétrons.',
    'D) 74 prótons.',
    'E) 127 nêutrons.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'75',
    'O humor dos quadrinhos está relacionado a duas possíveis interpretações para a palavra “pressão”: no sentido denotativo, refere-se à força aplicada pela coluna de água sobre o peixe-gota; e no, sentido conotativo, representa',
    'A) a aparência do peixe-gota quando ele está dentro da água.',
    'B) o aspecto harmonioso do peixe-gota quando ele está fora d’água.',
    'C) a aparência gelatinosa que o peixe-gota assume para afastar seus predadores.',
    'D) a necessidade de se adequar a padrões de beleza impostos pela sociedade.',
    'E) a dilatação sofrida por um corpo quando ele se encontra no fundo do oceano.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'76',
    'De acordo com o texto, é correto afirmar que',
    'A) a importância dos trabalhadores nos oceanos é mínima, uma vez que todas as tarefas são realizadas efetivamente por máquinas e equipamentos modernos.',
    'B) os benefícios proporcionados pelos oceanos devem ser apropriados pela Organização das Nações Unidas, que é a responsável pela fiscalização desse ambiente.',
    'C) as riquezas existentes nos oceanos devem ser exploradas por empresas privadas, a fim de impedir que empresas estatais se apropriem desses bens.',
    'D) o conhecimento que se tem sobre os oceanos deve ser disseminado entre as pessoas devido à importância que esse ambiente possui.',
    'E) o entendimento sobre os oceanos deve ficar armazenado nas universidades públicas para beneficiar as empresas petrolíferas.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'77',
    'Segundo o texto,',
    'A) o historiador francês Michel Gras chamava o mar Mediterrâneo de “cimento líquido” porque ele era uma barreira intransponível para os povos europeus.',
    'B) embora estabelecessem contatos comerciais, os vários povos que habitavam o continente europeu se mantiveram incomunicáveis pelo mar Mediterrâneo.',
    'C) os diferentes povos que habitavam a Europa utilizavam preferencialmente as rotas terrestres para seus deslocamentos pelo continente.',
    'D) o mar Mediterrâneo foi largamente navegado pelos povos antigos, que estabeleceram contatos e miscigenaram suas culturas.',
    'E) devido à sua forte interação, os vários povos antigos mantiveram a pureza de suas tradições e de suas culturas.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'78',
    'Considere um mergulho no qual o mergulhador encontra-se a 40 metros abaixo da superfície do mar. Nessa situação, a pressão do gás no interior do cilindro deve ser ajustada, em atm, para o valor de',
    'A) 3.',
    'B) 4.',
    'C) 5.',
    'D) 6.',
    'E) 7.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'79',
    'Para evitar essa “doença”, a atitude mais cautelosa que um mergulhador deve tomar é',
    'A) mergulhar o mais fundo possível antes de retornar à superfície.',
    'B) realizar exames médicos para checar a pressão sanguínea antes de mergulhar.',
    'C) subir até a metade do caminho e aumentar a velocidade de subida na metade final.',
    'D) subir rapidamente até o nível do mar para diminuir a pressão o mais rápido possível.',
    'E) subir lentamente até o nível do mar para que a pressão varie o mínimo possível ao longo do tempo.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'80',
    'No contexto da Segunda Revolução Industrial, o desenvolvimento dos navios a vapor',
    'A) provocou um processo de ruralização da população mundial, antes concentrada nas grandes cidades, por permitir o contato rápido entre partes distantes do globo.',
    'B) diminuiu o tempo do transporte de matérias-primas e mercadorias, barateou o preço do frete e possibilitou a expansão dos mercados consumidores ao ligar diferentes partes do globo.',
    'C) concentrou a produção industrial nas manufaturas dos países periféricos do continente africano e possibilitou o aproveitamento da oferta de mão de obra barata e qualificada.',
    'D) favoreceu o desenvolvimento do ramo do turismo e, associado à conquista de direitos trabalhistas como férias pelos operários escravizados, foi responsável pelo aumento da circulação de pessoas nos cinco continentes.',
    'E) reorientou a economia inglesa, que passou a se dedicar majoritariamente à produção de insumos para a indústria naval, em detrimento da produção de tecidos e outras mercadorias que caracterizaram a Primeira Revolução Industrial.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'81',
    'Se um golfinho emitir ondas sonoras com frequência de 100 000 Hz, ele será capaz de perceber objetos que tenham dimensões, em metros, a partir de',
    'A) 0,014.',
    'B) 0,070.',
    'C) 0,010.',
    'D) 0,200.',
    'E) 1,000.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'82',
    'Além de possibilitar a identificação de objetos em regiões de pouca iluminação, o sistema de ecolocalização tem um tempo de resposta curto, o que permite aos animais, como o golfinho, movimentarem-se com agilidade, facilitando a obtenção de alimentos e a fuga de predadores. Considerando a velocidade de propagação da onda sonora na água, o intervalo de tempo entre um golfinho emitir uma onda sonora, esta refletir em um peixe localizado a 140 metros de distância e o golfinho detectar o seu eco é, em segundos, de',
    'A) 0,1.',
    'B) 0,2.',
    'C) 0,3.',
    'D) 0,4.',
    'E) 0,5.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'83',
    'Assim como diversos outros aspectos das culturas africanas, o culto a Iemanjá existe no Brasil devido',
    'A) aos processos de deslocamentos populacionais que levaram milhares de brasileiros para o continente africano na segunda metade do século XVI.',
    'B) ao isolamento geográfico entre os dois territórios, separados por um imenso oceano que impediu os contatos entre as duas margens.',
    'C) à intolerância religiosa, que responsabiliza Iemanjá pelos processos históricos que possibilitaram a escravização de africanos.',
    'D) ao período imperial do Brasil que, quando governado por Iemanjá, anexou partes importantes do território africano.',
    'E) à escravização e ao tráfico de mão-de-obra africana para a realização dos mais diferentes trabalhos no Brasil.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'84',
    'Os trechos apresentados retratam um cenário caracterizado',
    'A) pela diversidade sociocultural, resultando em uma sociedade próspera.',
    'B) pela pobreza, reforçada pelas imagens do urubu e da sujeira.',
    'C) pelo uso recorrente da lama como matéria-prima para a indústria.',
    'D) pelo desenvolvimento urbano e socioambiental.',
    'E) pela riqueza de oportunidades ao indivíduo.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'85',
    'Sobre os textos, é correto afirmar que',
    'A) são escritos em terceira pessoa, sem envolvimento do eu lírico nas ações representadas.',
    'B) as “asas” dos urubus, diferentemente das “asas” do eu lírico, representam restrição.',
    'C) as preposições “de” e “a”, na passagem “da lama ao caos”, indicam respectivamente origem e destino.',
    'D) “quanto” pode ser substituído por “embora” na passagem “quanto mais miséria tem”.',
    'E) o gerúndio em “pintando” e “segurando” expressa ações concluídas no passado.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'86',
    'No texto, houve um erro de impressão, uma vez que, no lugar da mancha, deveria ter sido impresso um número. Admita que esse número é a solução da equação: 4(n + 6) = 5n – (28 – 3n). Assinale a alternativa que apresenta o valor que deveria estar no lugar onde aparece .',
    'A) 26',
    'B) 13',
    'C) 11',
    'D) 8',
    'E) 4',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'87',
    'De acordo com o texto, é possível estimar que o comprimento médio dos cabos submarinos é, em quilômetros, igual a aproximadamente',
    'A) 3,0×10^4.',
    'B) 3,0×10^3.',
    'C) 3,0×10^2.',
    'D) 3,0×10^1.',
    'E) 3,0×10^0.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'88',
    'Em relação aos ecossistemas citados no texto, é correto afirmar que são',
    'A) divididos basicamente em três espécies, sendo o mangue branco o mais conhecido, pois é utilizado como tintura para couros.',
    'B) importantes elementos facilitadores dos processos erosivos que ocorrem nas regiões costeiras, em função de ações das correntes marítimas.',
    'C) ambientes costeiros que apresentam raízes aéreas e que existem exclusivamente nos estados do Amapá e de Santa Catarina.',
    'D) áreas de proteção permanente, além de serem fundamentais para a reprodução de diversas espécies de peixes e crustáceos.',
    'E) encontrados nas regiões litorâneas do Brasil, principalmente nos estados de Tocantins e Goiás.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'89',
    'O evento histórico retratado no mapa é',
    'A) o Bloqueio Continental, decretado por Napoleão Bonaparte em 1806.',
    'B) a Guerra da Argélia, que culminou na independência do país africano em 1962.',
    'C) o ataque do Terceiro Estado contra Luís XVI, na Revolução Francesa, em 1789.',
    'D) o Desembarque de tropas dos países aliados na Normandia, litoral da França, em 1944.',
    'E) a Guerra Franco-Prussiana, que colocou fim ao processo de Unificação Alemã em 1871.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);
INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
VALUES (
	'90',
    'No último quadro da tirinha, é possível observar um grupo de peixes de tamanhos diversos, duas plantas aquáticas e duas conchas de formatos diferentes. Considere que você irá retirar do aquário um único peixe, uma única planta e uma única concha nessa ordem. Diante disso, então o total de maneiras de realizar essa ação é',
    'A) 96.',
    'B) 32.',
    'C) 12.',
    'D) 10.',
    'E) 4.',
    '', -- Deixe o campo de resposta correta vazio
    2023,
    '1'
);

-- INSERT TABLE tbIMAGENS PROVA 2023 1 SEMESTRE

	INSERT INTO tbImagens (cod_question, image_data)
VALUES 
    (51, 'imgs/txtQ1-3.PNG'),
	(54, 'imgs/txtQ4.PNG'),
	(55, 'imgs/txtQ5-6.PNG'),
	(58, 'imgs/txtQ8-9.PNG'),
	(60, 'imgs/txtQ10.PNG'),
	(61, 'imgs/txtQ11.PNG'),
	(62, 'imgs/txtQ12.PNG'),
	(63, 'imgs/txtQ13-14.PNG'),
	(65, 'imgs/txtQ15.PNG'),
	(66, 'imgs/txtQ16.PNG'),
	(69, 'imgs/txtQ19.PNG'),
	(70, 'imgs/txtQ20.PNG'),
	(71, 'imgs/txtQ21-22.PNG'),
	(73, 'imgs/txtQ23.PNG'),
	(74, 'imgs/txtQ24.PNG'),
	(75, 'imgs/txtQ25.PNG'),
	(76, 'imgs/txtQ26.PNG'),
	(77, 'imgs/txtQ27.PNG'),
	(78, 'imgs/txtQ28.PNG'),
	(79, 'imgs/txtQ29.PNG'),
	(80, 'imgs/txtQ30.PNG'),
	(81, 'imgs/txtQ31-32.PNG'),
	(82, 'imgs/txtQ32.PNG'),
	(83, 'imgs/txtQ33.PNG'),
	(84, 'imgs/txtQ34-35.PNG'),
	(86, 'imgs/txtQ36-37.PNG'),
	(88, 'imgs/txtQ38.PNG'),
	(88, 'imgs/txtQ38-2.PNG'),
	(89, 'imgs/txtQ39.PNG'),
    (90, 'imgs/txtQ40.PNG');

-- INSERT TABLE tbQUESTIONS PROVA 2023 2 SEMESTRE



--foreign key (cod_servico) references tbServicos(cod_servico));

--create table tbServicos(
--cod_servico int not null auto_increment,
--tipo_ervico varchar(50),
--descricao varchar(60),
--valor double,
--primary key (cod_servico));
--
--create table tbPagamentos(
--cod_pag int not null auto_increment,
--metodo varchar(30) not null,
--saldo float,
--cod_usuario int not null,
--cod_servico int not null,
--primary key (cod_pag),
--foreign key (cod_usuario) references tbUsuarios(cod_usuario),
--foreign key (cod_servico) references tbServicos(cod_servico));