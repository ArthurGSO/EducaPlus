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
        'A', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'A', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'A', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'A', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'A', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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
        'A', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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
        'A', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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
        'E', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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
        'C', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'D', -- Deixe o campo de resposta correta vazio
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
        'B', -- Deixe o campo de resposta correta vazio
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

    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        91,
        'Os termos em destaque no texto podem ser substituídos, correta e respectivamente, por',
        'A) um pouco, contribuição, salientes, apropriada.',
        'B) metade, ascendência, respeitáveis, inata.',
        'C) um pouco, origem, diferentes, particular.',
        'D) metade, força, discretos, inerente.',
        'E) ora, origem, diferentes, genérica.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        92,
        'O termo “crônica”, no segundo parágrafo do texto, refere-se',
        'A) ao período de longa duração da viola caipira antes de seu desaparecimento.',
        'B) à biografia dos reis portugueses responsáveis pela educação musical popular.',
        'C) ao texto jornalístico desenvolvido para comentar o conflito entre indígenas e portugueses.',
        'D) à brevidade do próprio texto, cuja concisão se deve à origem popular do tema.',
        'E) aos elementos históricos ligados à incorporação da viola em nossa cultura.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        93,
        'De acordo com o texto, é correto afirmar que',
        'A) os bandeirantes, que exploraram o interior de São Paulo, impuseram a vestimenta e o estilo musical europeus aos povos nativos.',
        'B) a viola caipira foi trazida pelos portugueses ao Brasil durante a Revolução Industrial, período de formação da cidade de São Paulo.',
        'C) o conceito de cultura caipira é anterior à Colonização, uma vez que se origina nos hábitos dos povos indígenas.',
        'D) o caipira, cuja cultura fora menosprezada por ser tachada como atrasada, tornou-se símbolo da identidade paulista.',
        'E) a técnica e o ritmo da música caipira são simples por serem resultado da junção das culturas indígena, africana e portuguesa.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        94,
        'O encontro que, segundo o texto, gerou a cultura caipira ocorreu devido',
        'A) às diferentes ondas migratórias que, das regiões norte e centro-oeste, trouxeram novos artistas e instrumentos, promovendo grande miscigenação cultural no início do século XX.',
        'B) à atuação dos bandeirantes, que realizavam expedições ao interior para escravizar populações indígenas e procurar metais preciosos no período colonial.',
        'C) ao dialeto falado pelos portugueses da corte que, quando chegaram ao Brasil, desenvolveram uma linguagem própria, traduzida no ritmo sofisticado da viola caipira.',
        'D) ao processo de industrialização, na década de 1960, em que a viola caipira virou símbolo de modernidade e foi adotada pelos membros da burguesia.',
        'E) ao uso que os bandeirantes deram ao instrumento trazido ao Brasil pelos negros escravizados no continente africano, no início do século XVI.',
        'B', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        95,
        'O som gerado por uma viola caipira provém da vibração de uma ou mais de suas cordas, o que forma um padrão vibracional que perturba o ar, produzindo uma onda sonora. Os diferentes sons que podem ser produzidos ao tocar uma viola decorrem de diferentes frequências emitidas pelo instrumento: quanto menor for a frequência, mais grave será o som percebido. Diferentes frequências são produzidas conforme a variação de alguns parâmetros, sendo um deles o comprimento: quanto maior o comprimento da corda vibrando, menor será a frequência. Considere a imagem. Assinale a alternativa que apresenta o ponto na imagem em que um violeiro deve pressionar a corda para que seja gerado o som mais agudo na viola.',
        'A) A',
        'B) B',
        'C) C',
        'D) D',
        'E) E',
        'A', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        96,
        'De acordo com o texto, é correto afirmar que',
        'A) a receita original da coxinha tem origem francesa, data do século XIX e se manteve inalterada até os dias atuais.',
        'B) o formato do alimento é resultado da tentativa falha de evidenciar, na forma, os ingredientes principais: batata e galinha.',
        'C) a gênese da coxinha é incerta, sua receita sofreu modificações no decorrer dos anos, e é um alimento popular em São Paulo.',
        'D) o salgadinho, apesar de ser feito com ingredientes acessíveis e populares, é símbolo da elite industrial paulista.',
        'E) a atribuição da origem da coxinha à família real é estratégia de marketing para aumentar o preço da iguaria popular.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        97,
        'O texto selecionado é híbrido, pois contém características de tipologias textuais diferentes. Ele é expositivo, por apresentar ao leitor informações sobre a origem da coxinha; e é também',
        'A) argumentativo, por expor evidências históricas irrefutáveis sobre a origem aristocrática desse prato.',
        'B) injuntivo, por fornecer comandos que podem ser seguidos na receita do alimento.',
        'C) narrativo, por contar a trajetória do alimento, desde a sua invenção até à chegada ao Brasil.',
        'D) descritivo, por caracterizar as impressões sensoriais de quem prova uma coxinha.',
        'E) prescritivo, por enfatizar a criatividade dos cozinheiros no preparo das coxinhas.',
        'B', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        98,
        'Um aluno, do curso de Gastronomia da Etec Santa Ifigênia, deseja seguir as instruções do último parágrafo do texto. Contudo, ao procurar em sua cozinha, ele notou que possui cinco coxas de galinha a menos do que o indicado. Desse modo ele decide reduzir proporcionalmente os ingredientes. Se originalmente usam-se 840 g de pão ralado, para a quantidade de coxas de galinha que o estudante dispõem, será necessária uma quantidade de pão ralado, em gramas, igual a',
        'A) 210.',
        'B) 350.',
        'C) 490.',
        'D) 630.',
        'E) 770.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        99,
        'O texto retrata, no segundo parágrafo, a coxinha como uma inovação. De acordo com o mesmo parágrafo, é correto afirmar que, dentre as competências mobilizadas pela cozinheira para a criação da coxinha, estão',
        'A) paciência e empatia, visto que a idealizadora da receita estava preocupada com o bem-estar do menino.',
        'B) zelo e responsabilidade, na medida em que se sensibilizou com as restrições alimentares do garoto.',
        'C) disciplina e perseverança, uma vez que a tentativa e o erro eram estimuladores do seu processo criativo.',
        'D) persistência e determinação, dado que o fracasso era uma opção aceitável dentro do contexto.',
        'E) iniciativa e empreendedorismo, pois a experimentação de novas ideias criou um produto.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        100,
        'Conforme as informações do texto, é correto afirmar que a devoção a Nossa Senhora Aparecida',
        'A) foi trazida ao país pela princesa Isabel, herdeira da família imperial, que presenteou a santa com uma coroa de ouro e um manto de veludo azul escuro.',
        'B) marca a divisão de classes presente na sociedade brasileira na medida em que está restrita aos representantes das classes baixas.',
        'C) foi imposta pelos poderes político e religioso, por meio de decretos papais e projetos de lei, embora não tivesse apelo popular.',
        'D) é um fenômeno inexpressivo na história do Brasil, tendo sido ignorada pelas autoridades desde o período colonial.',
        'E) iniciou-se no Brasil colônia, atravessou o período imperial e se manteve viva na República.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        101,
        'Assinale a alternativa que apresenta ações que impactam positivamente o meio ambiente.',
        'A) A recuperação de áreas degradadas e o esgotamento dos recursos naturais.',
        'B) A destruição da camada de ozônio e a utilização de energia eólica.',
        'C) A utilização de produtos biodegradáveis e a reciclagem de materiais.',
        'D) A potencialização do efeito estufa e a modificação de habitat.',
        'E) A diminuição de mananciais e a extinção de espécies.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        102,
        'De acordo com o cartum, o aprimoramento do intelecto pressupõe que o indivíduo',
        'A) deite e procrastine.',
        'B) saia de sua zona de conforto.',
        'C) tenha empatia para com o próximo.',
        'D) conte com a causalidade do destino.',
        'E) alimente-se de forma saudável e pratique atividades físicas.',
        'B', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        103,
        'Entre as substâncias monitoradas pela CETESB, temos o',
        'A) SO2, formado por átomos de 3 elementos químicos.',
        'B) O3, formado por 3 átomos de 1 elemento químico.',
        'C) NO2, formado por átomos de 3 elementos químicos.',
        'D) NO e o NO2, que diferem por 1 elemento químico.',
        'E) CO, que, diferentemente do CO2, é formado por 2 elementos químicos.',
        'B', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        104,
        'A partir das informações apresentadas no texto, pode-se concluir corretamente que',
        'A) a Yersinia pestis é o agente causador de doenças como a febre amarela, a poliomielite e muitas outras enfermidades.',
        'B) a epidemia de peste bubônica, na cidade de Santos, foi controlada pela ação de antígenos antivirais específicos, produzidos por organismos vacinados.',
        'C) a produção do soro antipestoso, utilizado para eliminar as pulgas parasitas dos ratos contaminados, acabou com o surto da peste bubônica na cidade de Santos.',
        'D) aprevenção contra casos de envenenamentos por animais e contra doenças comuns no Brasil, como tuberculose e verminoses, é feita através de vacinação da população.',
        'E) o soro é obtido de um animal que recebe o antígeno e, posteriormente, tem parte do seu sangue retirado para extração dos anticorpos.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        105,
        'De acordo com o texto, é correto afirmar que',
        'A) os esgotos provenientes do oceano Atlântico são transportados para Santos e São Vicente por canos que passam pela Ponte Pênsil.',
        'B) o médico Saturnino de Brito construiu a Ponte Pênsil, que liga Santos a São Vicente, com o propósito de eliminar o vírus que causava a peste bubônica.',
        'C) a Ponte Pênsil foi construída para sustentar os encanamentos responsáveis pelo carregamento do esgoto colhido nas cidades de São Vicente e de Santos.',
        'D) a usina hidrelétrica de Itaipu, em São Vicente, foi a responsável pela construção da Ponte Pênsil, encarregada de enviar água para movimentar suas turbinas.',
        'E) os municípios do Japuí e dos Barbosas passaram a ter uma ligação terrestre por meio da Ponte Pênsil, pois, anteriormente, a ligação entre eles era realizada por intermédio de barcos.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        106,
        'O texto faz referência ao período histórico em que a cidade de São Paulo',
        'A) permaneceu como capital do Brasil e uma das cidades mais importantes do mundo, sendo o principal centro de missionação católica e destacando-se por sua arquitetura arrojada.',
        'B) foi visitada por Mem de Sá, governador-geral do Brasil, que ordenou a transferência da população da vila de Santo André da Borda do Campo para os arredores do colégio, denominado “Colégio de São Paulo de Piratininga”.',
        'C) consolidou-se como metrópole industrial, concentrando o parque industrial brasileiro na capital e em sua região metropolitana, principalmente a partir da década de 1950, com a chegada das indústrias automobilísticas.',
        'D) permaneceu como uma vila pobre e isolada do litoral, sendo a única vila no interior do Brasil, mantendo-se por meio de lavouras de subsistência cultivadas por mulheres e crianças.',
        'E) vivenciou a expansão da produção do café, inicialmente na região da Avenida Paulista e depois nas regiões de Cidade Ademar, Santo Amaro, Butantã, Morumbi e Casa Verde.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        107,
        'Considere que densidade (d) é a razão entre a massa (m) e o volume (V) de uma amostra: d = m / V. Quando coletarmos 1 kg de água do Oceano Atlântico, necessitaremos de um recipiente cujo volume mínimo, em cm3, deverá ser aproximadamente de',
        'A) 1 030,0.',
        'B) 103,0.',
        'C) 350,0.',
        'D) 970,9.',
        'E) 97,0.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        108,
        'Os sais são formados por cátions (íons positivos) e ânions (íons negativos). Saiba que as representações dos íons presentes nos sais citados no texto são: Cátions: Na+, K+ e Mg2+ Ânion: Cl– Assinale a alternativa que apresenta a fórmula correta para os sais presentes no texto.',
        'A) NaCl, KCl, MgCl',
        'B) NaCl, KCl, MgCl2',
        'C) NaCl, KCl, Mg2Cl',
        'D) ClNa, ClK, Cl2Mg',
        'E) ClNa, ClK, ClMg',
        'B', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        109,
        'O linguado é um animal bentônico, que vive sob areia e cascalho no fundo do mar, ficando apenas com os olhos para fora. Por isso, ele consegue visualizar o chão ao seu redor e imitar os locais onde vive, mudando sua própria cor. Essa importante adaptação do linguado, que lhe permite tornar-se praticamente invisível, recebe o nome de',
        'A) protocooperação.',
        'B) comensalismo.',
        'C) camuflagem.',
        'D) inquilinismo.',
        'E) predatismo.',
        'C', -- Resposta correta é a opção C
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        110,
        'Relacionando os quadrinhos com o fenômeno descrito, pode-se dizer que são formadas',
        'A) marés baixas quando a Lua sai de sua órbita para se afastar da Terra.',
        'B) marés altas quando a Lua sai de sua órbita para se aproximar da Terra.',
        'C) marés altas nas regiões da Terra em que é dia, porque essas regiões estão mais próximas do Sol.',
        'D) marés baixas nas regiões da Terra em que é noite, porque essas regiões estão mais distantes do Sol.',
        'E) marés altas em regiões da Terra que estão mais próximas da Lua ao longo do movimento de rotação da Terra.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        111,
        'De acordo com os textos, é correto afirmar que',
        'A) a Sabesp é produto da união entre empresas públicas e privadas que atuavam na coleta de esgotos.',
        'B) a Sabesp obteve a adesão de outros estados, conseguindo expandir o tratamento de água para regiões próximas a São Paulo.',
        'C) a Sabesp contribuiu na prevenção da mortalidade infantil por meio não só da produção e da distribuição de água potável, mas também da coleta de esgoto.',
        'D) o Sistema Cantareira é responsável pela distribuição de água potável em todo o estado de São Paulo.',
        'E) as ETAs são fábricas produtoras de água destilada que, posteriormente, é tratada para ser, então, distribuída.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        112,
        'Suponha que a média de adesão relatada no texto seja mantida e que a Sabesp hoje atenda 375 municípios. Entre as alternativas dadas, assinale a que apresenta o menor número inteiro que corresponde ao tempo necessário, em anos, para a empresa conseguir ultrapassar a adesão de mais da metade desses municípios.',
        'A) 1,00',
        'B) 1,25',
        'C) 1,50',
        'D) 1,75',
        'E) 2,00',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        113,
        'Dessa forma, ao fim de um dia, a Sabesp terá tratado um volume, em litros, de aproximadamente',
        'A) 1,0 × 10^7.',
        'B) 1,0 × 10^8.',
        'C) 1,0 × 10^9.',
        'D) 1,0 × 10^10.',
        'E) 1,0 × 10^11.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        114,
        'Nessa última etapa, os flocos de sujeira são separados usando uma propriedade específica da matéria denominada',
        'A) ponto de fusão, pois os flocos são fundidos e retirados quando se depositam no fundo dos tanques.',
        'B) ponto de fusão, pois os flocos formam vapores que serão eliminados no ar.',
        'C) solubilidade, pois os flocos são dissolvidos e separados na filtração.',
        'D) solubilidade, pois os flocos formados irão para a superfície dos tanques e serão retirados com peneiras.',
        'E) densidade, pois os flocos formados irão para o fundo dos tanques e serão aspirados lentamente.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        115,
        'A partir da leitura do texto, podemos concluir corretamente que',
        'A) a higiene bucal, quando realizada com eficiência diariamente, ocasiona um elevado índice de proliferação de bactérias e de formação de placas bacterianas.',
        'B) a ação de bactérias na degradação dos carboidratos aumenta a acidez bucal, que é fundamental para o processo de proteção e de mineralização dos dentes.',
        'C) o flúor, adicionado à água potável, atua na digestão dos resíduos alimentares que ficam na cavidade bucal quando a higienização não é realizada corretamente.',
        'D) a fluoretação da água aumenta a desmineralização do esmalte dos dentes, reduzindo o aparecimento de cáries, por isso é um processo importante na saúde bucal.',
        'E) o flúor é usado na prevenção de cáries, pois fortalece o esmalte dos dentes, formando um material resistente à acidez decorrente da ação de bactérias.',
        'E', -- Resposta correta
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        116,
        'De acordo com o texto, é correto afirmar que',
        'A) as promessas de limpeza do rio Tietê ocorrem desde o século XIX.',
        'B) faz menos de vinte anos que o rio Tietê começou a ser poluído.',
        'C) o rio Tietê possui 122 quilômetros, sendo que, destes, 71 estão poluídos.',
        'D) o trecho morto do rio Tietê aumentou 41 quilômetros entre os anos de 2018 e 2019.',
        'E) as promessas de limpeza do rio Tietê já ocorriam em 1940 devido a pressões populares.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        117,
        'O museu apresentado no texto foi fundado para celebrar',
        'A) a anexação do território do Acre.',
        'B) a vitória do Império do Brasil na Guerra do Paraguai.',
        'C) a chegada da Família Real Portuguesa ao Rio de Janeiro.',
        'D) o extermínio dos povos indígenas do Planalto Paulista.',
        'E) a Proclamação da Independência do Brasil.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        118,
        'De acordo com o infográfico, assinale a alternativa que apresenta, corretamente, uma atividade relacionada à pergunta “Como ser um cidadão mais participativo?”.',
        'A) Trabalhar com carteira assinada como atendente em uma pizzaria.',
        'B) Produzir lanches saudáveis para vender na escola.',
        'C) Ser estagiário remunerado em uma empresa de distribuição de alimentos.',
        'D) Visitar e conversar com pacientes internados em hospitais.',
        'E) Atuar profissionalmente na elaboração de jogos on-line.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        119,
        'Tendo como base a linguagem verbal e não verbal, é correto afirmar que',
        'A) a charge aborda a oposição entre mobilidade e imobilidade, sendo esta representada pela imagem de uma expressão figurada.',
        'B) a tirinha ironiza o trânsito nos centros urbanos, insinuando que apenas uma intervenção divina é capaz de solucionar o problema.',
        'C) o cartum demonstra, por meio da linguagem não verbal, que as bicicletas não são veículos viáveis para a mobilidade urbana.',
        'D) a charge tematiza a impossibilidade de solucionar a falta de mobilidade nos grandes centros urbanos.',
        'E) o cartum representa a dificuldade de vivenciar plenamente a cidade devido à falta de automóveis.',
        'A', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        120,
        'Sobre a linguagem verbal utilizada no texto, é correto concluir que',
        'A) “enquanto” é um conectivo de alternância e pode ser substituído por “ou”.',
        'B) “isso” é um pronome indefinido e aponta para o passado do leitor.',
        'C) as reticências utilizadas expressam a continuidade de uma enumeração não concluída.',
        'D) “que” é um conectivo de comparação e está subordinado ao termo “melhor”.',
        'E) “para” é uma preposição final utilizada, no texto, para indicar o destino da personagem.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        121,
        'O texto menciona a necessidade de uma obra de infraestrutura para atender à demanda da produção de café, que',
        'A) perdia espaço para o tabaco como principal produto de exportação do Brasil no período mencionado.',
        'B) era voltado para o mercado interno, consumido principalmente nos estados da região Centro-Oeste.',
        'C) entrava no país pelo porto de Santos, vindo da Etiópia, e era distribuído nos entrepostos e armazéns do interior de São Paulo.',
        'D) ocupava posição irrelevante na pauta de exportações brasileiras, sendo consumido em países pequenos, como Guiana Francesa e Suriname.',
        'E) era enviado principalmente para os Estados Unidos e para diferentes países da Europa, sendo o principal produto de exportação do Brasil.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        122,
        'No início da década de 1970, eram necessárias aproximadamente 2 horas para realizar o trajeto entre a estação Valongo e a estação da Luz. Nesse percurso, o trem se locomovia com uma velocidade escalar média, aproximadamente, de',
        'A) 69,5 km/h',
        'B) 54,5 km/h',
        'C) 39,5 km/h',
        'D) 34,5 km/h',
        'E) 24,5 km/h',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        123,
        'No estado de São Paulo, durante a segunda metade do século XIX, grandes ferrovias foram construídas. O principal motivo desse empreendimento foi o escoamento da produção do café até às proximidades do porto de Santos. Atualmente, um dos principais produtos exportados pelo porto de Santos é',
        'A) semicondutor.',
        'B) óleo de palma.',
        'C) fertilizante.',
        'D) trigo.',
        'E) soja.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        124,
        'Com base no texto, é correto afirmar que',
        'A) as outras ferrovias paulistas nomeavam suas estações seguindo um padrão estabelecido pelo governo federal desde 1808.',
        'B) as outras ferrovias paulistas copiaram o modelo abecedário da Companhia Paulista de Estradas de Ferro, utilizado por esta desde o século XVII.',
        'C) a estação Nipônica foi assim nomeada como uma homenagem aos imigrantes japoneses que vieram ao Brasil no século XIX para participar da construção de ferrovias.',
        'D) o nome de cada estação da linha citada estava ligado tanto a eventos históricos vinculados ao estado de São Paulo quanto a correntes imigratórias e à localização geográfica.',
        'E) o nome das estações coincide com o nome das cidades que se formaram ao seu redor, pois elas mantiveram suas denominações e, portanto, não houve trocas de nomes até os dias de hoje.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        125,
        'Com base nos textos, é correto afirmar que',
        'A) a realização do nosso projeto de vida passa pelas revoluções industriais, que ajudaremos a construir, para que nossa caminhada tenha sentido.',
        'B) o estabelecimento dos próprios caminhos e o esforço para fazer o nosso melhor são ações fundamentais para empreender qualquer projeto de vida.',
        'C) um projeto de vida bem estruturado é como um barco sem instrumentos de navegação e sem cinemas que nos permitam assistir a filmes sem roteiros previamente traçados.',
        'D) toda revolução é um retrocesso e a única possível é aquela que faz nossa caminhada seguir além do túmulo, ou seja, quando transformamos o regime social de nosso país em um império.',
        'E) nossa realização como pessoa necessita de retrocessos para que possamos nos desvencilhar de qualquer caminho pré-estabelecido e, assim, construirmos nossos sonhos sem as amarras da sociedade.',
        'B', -- Resposta correta
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        126,
        'Em 1968, o Prof. Dr. Euryclides de Jesus Zerbini, cirurgião cardiologista, realizou no Hospital das Clínicas de São Paulo, com sucesso, o primeiro transplante cardíaco em humano no Brasil. No caso de cardiopatias de alta complexidade, o transplante de coração surge como a forma mais indicada para que o paciente volte a ter uma vida com qualidade. No entanto, apesar de as cardiopatias estarem associadas a alguns fatores que não podem ser modificados, como a hereditariedade, o sexo e a idade, outros fatores podem e devem ser modificados pelas mudanças no estilo de vida e pelo uso de medicamentos. Assim, para o paciente que já tem predisposição ou que tem esse tipo de problema, é importante',
        'A) manter o nível elevado de pressão arterial e deixar de realizar exames preventivos periodicamente.',
        'B) não só evitar as atividades físicas, como também reduzir o consumo de água ao longo do dia.',
        'C) manter o consumo elevado de sal, e aumentar o consumo de bebida alcoólica.',
        'D) controlar o excesso de peso, e tomar as medicações quando indicadas.',
        'E) comer alimentos ricos em carboidratos, óleos e gorduras; e excluir legumes, verduras e cereais.',
        'D', -- Opção correta
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        127,
        'Segundo o texto,',
        'A) o chamado triângulo, formado pelas ruas São Bento, Direita e Quinze de Novembro, foi excluído dos planos de reforma do centro, uma vez que ali se localizava a Igreja de Nossa Senhora do Rosário dos Homens Pretos, considerada um símbolo de atraso.',
        'B) a reforma do centro da cidade tinha o objetivo de preservar os elementos mais significativos do passado colonial, exaltando a presença negra em São Paulo e sua contribuição para o desenvolvimento cultural da cidade.',
        'C) a demolição da Igreja de Nossa Senhora do Rosário dos Homens Pretos era parte do objetivo de eliminar do centro da cidade qualquer elemento considerado atrasado, que lembrasse o passado colonial.',
        'D) embora São Paulo possuísse símbolos modernos, ela só passou a ser considerada moderna, como as cidades dos países civilizados, quando Antônio da Silva Prado criou o cargo de prefeito em 1911.',
        'E) a criação do cargo de prefeito interrompeu os esforços de modernização da capital, a remodelação dos espaços e do aparelhamento urbano, especialmente no centro da cidade.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        128,
        'A região triangular, mencionada no texto, expandiu-se ao longo do tempo. Entretanto ela permanece sendo conhecida como Triângulo Histórico de São Paulo e sua configuração atual é mostrada no mapa. Ao considerar o polígono demarcado pelas linhas pretas no mapa, matematicamente, ele seria descrito como um',
        'A) triângulo.',
        'B) quadrilátero.',
        'C) heptágono.',
        'D) undecágono.',
        'E) dodecágono.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        129,
        'No mapa da questão anterior, é possível traçar um triângulo ao utilizar como vértices o Pateo do Collegio, o Largo São Bento e o Largo São Francisco. Sobre esse polígono, considere que a distância, em linha reta, entre o Pateo do Collegio e o Largo São Francisco é de 500 m; entre o Pateo do Collegio e o Largo São Bento é de 500 m; e entre o Largo São Francisco e o Largo São Bento é de 800 m. Logo, sobre o triângulo traçado, é possível concluir que ele é',
        'A) isósceles e acutângulo.',
        'B) escaleno e acutângulo.',
        'C) isósceles e obtusângulo.',
        'D) escaleno e obtusângulo.',
        'E) isósceles e retângulo.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        130,
        'Considerando os seres vivos citados no texto, podemos afirmar que',
        'A) as borboletas e as libélulas liberam pela respiração o gás oxigênio, o qual é fundamental para a sobrevivência das ninfeias.',
        'B) os ciprestes e os pinheiros são plantas conhecidas como gimnospermas, pois formam sementes não envolvidas por frutos.',
        'C) todos os vegetais descritos nos espaços de visitação são aclorofilados, portanto incapazes de realizar fotossíntese e de produzir seu próprio alimento.',
        'D) as espécies pau-brasil e imbuia são plantas arbustivas, de dois a seis metros de altura, que estão ameaçadas de extinção, pois não possuem vasos condutores de seiva.',
        'E) a presença de bichos-preguiça e bugios no Jardim Botânico é prejudicial ao equilíbrio do ecossistema, pois são carnívoros e competem entre si pelo alimento escasso.',
        'B', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        131,
        'De acordo com o texto, é correto afirmar que',
        'A) essa árvore nasceu no século XX, de acordo com o Instituto de Pesquisas Tecnológicas.',
        'B) o prefeito Firmiano Pinto resolveu cortar essa árvore em 1909, mas foi impedido pela imprensa paulista.',
        'C) Dom Pedro I se dirigia a essa árvore para chorar e lamentar a ida de milhares de paulistas para lutarem na Guerra do Paraguai.',
        'D) essa árvore foi trazida do Paraguai durante a Guerra para servir de apoio psicológico para as mães que tinham perdido seus filhos no conflito.',
        'E) a árvore, que dá nome a uma estrada localizada no município de São Paulo, está protegida, hoje em dia, pelo poder público, que proíbe seu corte.',
        'E', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        132,
        'A descoberta descrita no texto evidencia corretamente que',
        'A) as espécies existentes há milhões de anos eram iguais às atuais.',
        'B) os seres vivos se transformam em fósseis quando são totalmente decompostos após sua morte.',
        'C) as partes duras dos animais, como dentes, ossos, vértebras e carapaças, não são passíveis de fossilização.',
        'D) os registros paleontológicos revelam informações as quais permitem os estudos sobre seres vivos de determinadas épocas.',
        'E) as partes moles dos animais e dos vegetais são rapidamente fossilizadas devido à presença de bactérias e fungos decompositores.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        133,
        'Um turista pretende visitar três dos destinos listados, sendo que sua primeira parada será o Museu do Café, e os outros dois destinos serão escolhidos de forma aleatória. O número máximo de roteiros diferentes, levando em conta a ordem de visitação aos pontos turísticos, corresponde a',
        'A) 15.',
        'B) 30.',
        'C) 36.',
        'D) 42.',
        'E) 210.',
        'B', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        134,
        'O avião que transportará a equipe de Araraquara voará deste município, em linha reta, em direção ao município de Jundiaí no sentido',
        'A) Noroeste.',
        'B) Nordeste.',
        'C) Sudoeste.',
        'D) Sudeste.',
        'E) Norte.',
        'D', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        135,
        'De acordo com os dados apresentados, é correto afirmar que o destino turístico que possui a melhor avaliação média, considerando os dois sites, é',
        'A) Aparecida.',
        'B) Campos do Jordão.',
        'C) Eldorado.',
        'D) Ilhabela.',
        'E) Olímpia.',
        'A', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        136,
        'O produto dessas fontes, a água mineral, é um exemplo de',
        'A) substância composta.',
        'B) substância simples.',
        'C) substância pura.',
        'D) mistura destilada.',
        'E) mistura.',
        'E', -- Insira a opção correta aqui
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        137,
        'Assinale a alternativa que completa correta e respectivamente as lacunas do texto.',
        'A) diminui; aumentar',
        'B) diminui; diminuir',
        'C) diminui; se manter igual',
        'D) aumenta; diminuir',
        'E) aumenta; aumentar',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        138,
        'Segundo o texto,',
        'A) a presença de meninas nas partidas de futebol de sua infância foi o impulso necessário para o alto rendimento da atleta na vida adulta.',
        'B) o futebol feminino gozava de melhores condições no passado, pois as meninas eram aceitas nas partidas dos meninos.',
        'C) a atleta enfrentou dificuldades relacionadas às condições financeiras de sua família e ao fato de que, em sua infância, não havia muitas meninas com quem pudesse jogar.',
        'D) a atleta considera o futebol profissional um esporte democrático, pois, sem condições financeiras e sem ajuda, ela encontrou facilidade para praticá-lo.',
        'E) para ser bem sucedida no esporte que escolheu, bastou a atleta acreditar em seu potencial e se empenhar nos treinos.',
        'C', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        139,
        'Assinale a alternativa que completa correta e respectivamente as lacunas do texto.',
        'A) aquecer; expandir; diminuindo',
        'B) resfriar; expandir; diminuindo',
        'C) aquecer; expandir; aumentando',
        'D) resfriar; contrair; aumentando',
        'E) aquecer; contrair; diminuindo',
        'A', -- Deixe o campo de resposta correta vazio
        2023,
        '2'
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre)
    VALUES (
        140,
        'Nos quadrinhos dados, o humor é utilizado para criticar o uso constante de alguns recursos tecnológicos que podem levar à perda da autonomia. Uma atitude possível para combater esse processo na sociedade atual é',
        'A) a utilização do celular como ferramenta de comunicação por todos, garantindo, assim, igualdade entre os indivíduos.',
        'B) a substituição do celular por computadores pessoais portáteis, já que oferecem mais recursos de verificação de informação.',
        'C) o ensino da resiliência nas escolas, pois o entendimento da realidade do próximo acarreta a necessidade de contatos interpessoais virtuais e físicos.',
        'D) o uso constante de linguagem informal e acessível, pois o desconhecimento linguístico impede a concretização de uma comunicação efetiva fora da internet.',
        'E) a valorização do autoconhecimento e do senso crítico, competências capazes de gerar um indivíduo questionador, atento à realidade e independente.',
        'E', -- Alternativa correta
        2023,
        '2'
    );

-- INSERT TABLE tbIMAGENS PROVA 2023 2 SEMESTRE
    INSERT INTO tbImagens (cod_question, image_data)
    VALUES 
        (91, 'imgs2/txtQ1-3.PNG'),
        (95, 'imgs2/txtQ5.PNG'),
        (96, 'imgs2/txtQ6-9.PNG'),
        (100, 'imgs2/txtQ10.PNG'),
        (101, 'imgs2/txtQ11.PNG'),
        (102, 'imgs2/txtQ12.PNG'),
        (103, 'imgs2/txtQ13.PNG'),
        (104, 'imgs2/txtQ14-1.PNG'),
        (104, 'imgs2/txtQ14-2.PNG'),
        (105, 'imgs2/txtQ15.PNG'),
        (106, 'imgs2/txtQ16.PNG'),
        (106, 'imgs2/txtQ16-2.PNG'),
        (107, 'imgs2/txtQ17.PNG'),
        (108, 'imgs2/txtQ18.PNG'),
        (109, 'imgs2/txtQ19-20.PNG'),
        (110, 'imgs2/txtQ20.PNG'),
        (110, 'imgs2/txtQ20-1.PNG'),
        (111, 'imgs2/txtQ21-23.PNG'),
        (113, 'imgs2/txtQ23.PNG'),
        (114, 'imgs2/txtQ24.PNG'),
        (115, 'imgs2/txtQ25.PNG'),
        (116, 'imgs2/txtQ26.PNG'),
        (116, 'imgs2/txtQ26-1.PNG'),
        (117, 'imgs2/txtQ27.PNG'),
        (118, 'imgs2/txtQ28.PNG'),
        (119, 'imgs2/txtQ29-30.PNG'),
        (121, 'imgs2/txtQ31-32.PNG'),
        (124, 'imgs2/txtQ34.PNG'),
        (125, 'imgs2/txtQ35.PNG'),
        (127, 'imgs2/txtQ37-39.PNG'),
        (128, 'imgs2/txtQ38.PNG'),
        (130, 'imgs2/txtQ40.PNG'),
        (131, 'imgs2/txtQ41.PNG'),
        (132, 'imgs2/txtQ42.PNG'),
        (133, 'imgs2/txtQ43.PNG'),
        (134, 'imgs2/txtQ44.PNG'),
        (135, 'imgs2/txtQ45.PNG'),
        (136, 'imgs2/txtQ46.PNG'),
        (137, 'imgs2/txtQ47.PNG'),
        (138, 'imgs2/txtQ48.PNG'),
        (139, 'imgs2/txtQ49.PNG'),
        (140, 'imgs2/txtQ50.PNG');










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