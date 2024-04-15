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

CREATE TABLE tbResults (
    cod_resultado int not null auto_increment primary key,
    cod_usuario int not null,
    exam_year int not null,
    semestre char(1) check(semestre in("1","2")),
    total_questoes int,
    pontuacao_percent decimal(5,2),
    maior_taxa_acerto varchar(255),
    menor_taxa_acerto varchar(255),
    questoes_corretas int,
    questoes_erradas int,
    timestamp datetime default current_timestamp,
    foreign key (cod_usuario) references tbUsuarios(cod_usuario)
);

CREATE TABLE tbImagens (
    cod_image int not null auto_increment primary key,
    cod_question int not null,
    image_data varchar(255),
    foreign key (cod_question) references tbQuestions(cod_question)
);

-- INSERT TABLE tbQUESTIONS PROVA 2024 1 SEMESTRE
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        1,
        'Com base no texto e com o auxílio do mapa, é correto afirmar que', 
        'A) Amazônia Internacional é administrada pelo Instituto Brasileiro de Geografia e Estatística (IBGE).', 
        'B) Os estados da Região Norte do Brasil estão totalmente inseridos na Amazônia Legal.', 
        'C) O estado do Maranhão, por pertencer à Região Norte, faz parte da Amazônia Legal.', 
        'D) A bacia hidrográfica do Amazonas engloba todos os rios da América do Sul.', 
        'E) O Bioma Amazônia se estende da Venezuela até o sul da Argentina.', 
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        2,
        'A Amazônia Legal', 
        'A) Abrange todos os estados da Região Centro-Oeste do Brasil.', 
        'B) Localiza-se totalmente no hemisfério sul da Terra.', 
        'C) Engloba a maior parte do Bioma Amazônia.', 
        'D) Inclui todas as reservas indígenas existentes no Brasil.', 
        'E) Avança sobre o polígono das secas, no Nordeste brasileiro.', 
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        3,
        'Estratos da Floresta Amazônica', 
        'A) Floresta aciculifoliada, mata de transição e mata ciliar.', 
        'B) Mata de igapó, mata de várzea e mata de terra firme.', 
        'C) Restinga, campos limpos e mata dos cocais.', 
        'D) Pantanal, cerrado e floresta de araucária.', 
        'E) Caatinga, campos sujos e manguezais.', 
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        4,
        'Características do Bioma Amazônia', 
        'A) Gramíneas e plantas arbustivas; árvores de pequeno e médio porte, com folhas transformadas em espinhos para diminuir a transpiração e caules suculentos que armazenam água.', 
        'B) Plantas, que se desenvolvem em solos lamacentos e salgados, com troncos finos, cujas raízes se adaptam à fixação e se elevam à superfície para permitir a respiração.', 
        'C) Plantas herbáceas e arbustivas que compõem os campos; árvores de médio porte, geralmente com troncos grossos e retorcidos, folhas de superfície reduzida e raízes profundas.', 
        'D) Árvores de médio e grande porte, com folhas largas e perenes; vários tipos de flores e frutos; além de diversos tipos de arbustos, trepadeiras, cipós e planta epífitas.', 
        'E) Gramíneas; plantas herbáceas; leguminosas; algumas árvores de pequeno porte; além da presença de matas ciliares e algumas árvores decíduas.', 
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        5,
        'Letra da Canção sobre a Floresta Amazônica', 
        'A) A falta de mobilização dos povos originários para proteger os biomas mencionados resulta do curto período de convivência com a floresta.', 
        'B) A destruição da Floresta Amazônica gera prejuízos à vida animal e à vegetal, amenizando os impactos na vida e na cultura daqueles que a habitam.', 
        'C) Os povos originários aliaram-se recentemente aos guardiões da floresta, quando houve um recrudescimento trágico do desmatamento.', 
        'D) A Amazônia é alvo de exploração pelo caráter único de suas riquezas, ação facilitada pela ausência de medidas efetivas de proteção.', 
        'E) Os ataques à Floresta Amazônica, além de esporádicos, acarretam consequências reversíveis e restritas à fauna local.', 
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        6,
        'Recursos Literários na Letra da Canção', 
        'A) Metáfora no trecho “contra trator, corrente, motosserra”, verso 03, pois os objetos listados simbolizam a superação da floresta contra as ameaças externas.', 
        'B) Antítese entre “beleza” e “valor”, verso 6, pois são termos de sentido oposto.', 
        'C) Paronomásia no excerto “tanta insânia e tanta insônia”, verso 12, pois se aproximam termos com sons semelhantes e sentidos diferentes.', 
        'D) Paradoxo em “nos últimos e trágicos decênios”, verso 19, pois o conceito de “trágico” anula a ideia de novidade, expressa pelo termo “últimos”.', 
        'E) Personificação na passagem “eles não pensam”, verso 25, pois se atribui a capacidade de pensar a seres inanimados.', 
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        7,
        'Recursos Gramaticais na Letra da Canção', 
        'A) Os termos “porém” (v. 5), “pois” (v. 8) e “todavia” (v. 9) têm o mesmo sentido.', 
        'B) Os pronomes “seus” (v. 24) e “eles” (v. 25) se referem à mesma ideia, mencionada anteriormente no texto.', 
        'C) Os dois-pontos, utilizados nos versos 4 e 9, introduzem uma justificativa para os fatos apresentados.', 
        'D) O vocábulo “que”, nos versos 7 e 8, retoma “mundo” e “vida” respectivamente.', 
        'E) Os pronomes “seu” (v. 17) e “deles” (v. 21) antecipam uma informação posteriormente apresentada no texto.', 
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        8,
        'Características dos Vertebrados da Floresta Amazônica',
        'A) Realizam as trocas gasosas por meio de um par de pulmões do tipo alveolar com paredes muito delgadas.',
        'B) Conseguem manter a temperatura corporal constante apesar de alterações da temperatura ambiental.',
        'C) Dependem de oxigênio, que é usado na oxidação de moléculas orgânicas, como a glicose, a fim de obter energia.',
        'D) Apresentam fecundação externa, com desenvolvimento indireto por meio de fase larval, seguida de metamorfose.',
        'E) Possuem bexiga natatória, que é um órgão responsável pela manutenção do equilíbrio hidrostático.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        9,
        'Informações sobre a Floresta Amazônica',
        'A) A floresta Amazônica brasileira tem 670 milhões de hectares.',
        'B) A maior floresta tropical do mundo está localizada totalmente em território brasileiro.',
        'C) O Brasil pode comprar créditos de carbono para custear a Floresta Amazônica.',
        'D) Países que emitem gases do efeito estufa em excesso podem adquirir créditos de carbono como forma de compensação.',
        'E) Cada tonelada de gases do efeito estufa não emitida, como dióxido de carbono e metano, equivale a 1 crédito de carbono.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        10,
        'Produto dos Números Destacados em Notação Científica',
        'A) 1,0 × 10¹⁴',
        'B) 1,0 × 10¹³',
        'C) 1,0 × 10¹²',
        'D) 1,0 × 10¹¹',
        'E) 1,0 × 10¹',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        11,
        'Quantidade de Créditos de Carbono da Floresta Amazônica',
        'A) 402 milhões.',
        'B) 402 bilhões.',
        'C) 670 milhões.',
        'D) 12 060 bilhões.',
        'E) 12 060 milhões.',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        12,
        'Mapa de Movimentos de Ocupação na América do Sul',
        'A) As missões jesuíticas não só demarcavam os limites entre as possessões espanhola e portuguesa, mas também garantiam a posse da Amazônia para a Espanha.',
        'B) A ocupação da América Portuguesa ocorreu na costa atlântica, em detrimento da região da Amazônia, que permaneceu despovoada até o final do século XVII.',
        'C) A integração da Amazônia ao território da colônia portuguesa está relacionada à presença de missões jesuíticas e de expedições para escravização de indígenas.',
        'D) As expedições de apresamento se estabeleceram na Amazônia Espanhola, e, de lá, partiram para o leste a fim de escravizar os indígenas que viviam na colônia portuguesa.',
        'E) A presença de missões jesuíticas portuguesas na Amazônia indica que essa região pertencia a Portugal, de acordo com os tratados internacionais vigentes no período colonial.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        13,
        'Distância entre Ponto P e Acampamento A',
        'A) 18.',
        'B) 20.',
        'C) 26.',
        'D) 28.',
        'E) 32.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        14,
        'Função Social do Gênero Textual',
        'A) Colocar em destaque a revolução promovida pela tecnologia digital, já que essa mudança padroniza e limita a forma de aprender do estudante.',
        'B) Debater sobre os movimentos migratórios, cada vez maiores no nosso país, os quais prejudicam o surgimento de culturas novas na sociedade.',
        'C) Discutir as mudanças no núcleo familiar devido à dedicação exclusiva dos responsáveis a atividades profissionais, prejudicando a comunicação com as gerações mais jovens.',
        'D) Valorizar as identidades construídas ao longo do tempo, ao perceber que muitas pessoas passaram pelo mundo, deixando ensinamentos e experiências.',
        'E) Visualizar as mudanças laborais, uma vez que está cada vez mais fácil conseguir um trabalho formal na área de caça, pesca e apreensão de animais em áreas protegidas.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        15,
        'Transmissão de Ensinos e Histórias na Região Amazônica',
        'A) Escritas.',
        'B) Iconográficas.',
        'C) Materiais.',
        'D) Orais.',
        'E) Arqueológicas.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        16,
        'Formação da Imagem da Lua vista por Naiá',
        'A) Refração da luz, proveniente da Lua, no fundo do lago.',
        'B) Ilusão de óptica criada pelo movimento das águas do lago.',
        'C) Reflexão dos raios de luz, provenientes da Lua, pela superfície do lago.',
        'D) Absorção dos raios de luz, provenientes da Lua, pela superfície do lago.',
        'E) Projeção holográfica dos raios de luz, provenientes da Lua, na superfície do lago.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        17,
        'Adaptações da Vitória-Régia',
        'A) Pés de pato por mergulhadores.',
        'B) Sinalizadores em barcos de passeio.',
        'C) Toucas de natação por competidores olímpicos.',
        'D) Coletes salva-vidas infláveis por pessoas que não sabem nadar.',
        'E) Roupas de neoprene por surfistas durante as competições no mar.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        18,
        'Estado do Acre',
        'A) Central Geodésico do território brasileiro, localizado em sua capital.',
        'B) Mais ocidental do território brasileiro, a nascente do Rio Moa.',
        'C) Mais setentrional do território brasileiro, a nascente do Rio Ailã.',
        'D) Mais oriental do território brasileiro, a Ponta do Seixas.',
        'E) Mais meridional do território brasileiro, o Arroio Chuí.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        19,
        'Segundo o Texto',
        'A) Os anciões indígenas decidiram expor seus conhecimentos por meio de ideogramas devido à limitação cultural dos não indígenas.',
        'B) O povo Yanomami garante bem-estar social duradouro para as próximas gerações ao seguir os padrões de vida dos brancos.',
        'C) A exploração da caça e da pesca realizada pelos Yanomami é fruto do contato com o saber trazido pelos brancos colonizadores.',
        'D) A forma de divulgação da cultura dos povos originários para o restante da sociedade deve restringir-se à oralidade.',
        'E) O equilíbrio na relação entre natureza e homem é base e garantia da manutenção da cultura Yanomami.',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        20,
        'Assinale a alternativa que apresenta uma reescrita correta e coerente do trecho sublinhado no texto.',
        'A) Acredito que, caso vivamos em cidades, seríamos infelizes, já que haveria o fim da floresta e, então, não deixarão lugar onde poderemos viver distante deles.',
        'B) Como fomos viver em cidades, somos infelizes, pois os brancos acabam com a floresta e não deixaram lugar onde pudéssemos viver distante deles.',
        'C) E reconheço que, caso fôssemos viver em suas cidades, seríamos infelizes; eles acabariam, pois, com a floresta e não deixariam lugar onde pudéssemos viver distante deles.',
        'D) Ainda que fôssemos viver nas cidades dos brancos, não seremos felizes, pois eles acabaram com a floresta e não deixariam lugar onde poderíamos viver distante deles.',
        'E) Afirmo até que, ao irmos viver nas cidades, seremos infelizes, posto que eles acabam com a floresta e não deixam lugar onde pudemos viver distante deles.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        21,
        'A leitura é representada, no texto, pela metáfora:',
        'A) “Viver longe deles”.',
        'B) “Nos tornar brancos”.',
        'C) “Pensar coisas da floresta”.',
        'D) “Fixar os olhos em peles de papel”.',
        'E) “Desenhar na língua dos brancos”.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        22,
        'Segundo o texto:',
        'A) Os habitantes da Amazônia estabelecem relações harmônicas entre si e com a floresta e, por isso, não experienciam os principais problemas enfrentados pelas populações urbanas.',
        'B) Chico Mendes se dedicou a refletir sobre a sua relação com a floresta, desconsiderando causas sociais, como a questão fundiária.',
        'C) O fato de ter sido alfabetizado tardiamente afetou a compreensão de Chico Mendes, que não soube se posicionar sobre as questões sociais e ambientais de seu entorno.',
        'D) As vivências e práticas na floresta proporcionaram a Chico Mendes uma série de saberes os quais o levaram a formular uma teoria ambiental, que, mais tarde, foi comprovada por outras pessoas.',
        'E) Chico Mendes passou toda a sua vida isolado na floresta, sem estabelecer contatos com outras partes do Brasil e do mundo e, por isso, não foi bem sucedido em sua luta.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        23,
        'Entre os diversos mecanismos sugeridos para explicar como a derrubada da Floresta Amazônica contribuiria para o aumento da incidência da doença citada na pesquisa, é correto afirmar que',
        'A) A destruição completa do ambiente natural de reprodução dos insetos transmissores, decorrente do efeito estufa e da diminuição da camada de ozônio, favoreceria a proliferação das bactérias que causam essa doença, levando ao aumento do número de casos.',
        'B) O aumento da migração humana para fazendas, assentamentos e garimpos nas áreas desmatadas, junto com a adaptação dos insetos transmissores aos novos habitats, contribuiria para o aumento da transmissão dos parasitas causadores dessa doença.',
        'C) O desmatamento teria ocasionado a diminuição das superfícies aquáticas e o aparecimento de várias espécies de caramujos, hospedeiros das larvas dos insetos transmissores dessa doença.',
        'D) Os insetos transmissores, conhecidos popularmente como barbeiros, e outras várias espécies diferentes, após o desmatamento, teriam ficado altamente eficientes para a transmissão dessa doença.',
        'E) As condições ambientais nas regiões desmatadas da floresta, tais como temperaturas muito baixas e baixos índices pluviométricos, junto com a ausência dos insetos transmissores, teriam aumentado a incidência dessa doença.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        24,
        'Denúncias são importantes formas de detecção das infrações ambientais. Um exemplo é a Linha Verde, do Instituto Brasileiro do Meio Ambiente e dos Recursos Naturais Renováveis (Ibama), disponibilizada para todo o Brasil. Por meio dela, o cidadão pode informar possíveis infrações ambientais através de uma Central de Atendimento.
        Suponha que a tabela apresentada registre o número de denúncias recebidas por um atendente sobre o desmatamento na Floresta Amazônica.
        Uma expressão algébrica que relaciona o número de denúncias (N) em função do dia do mês (D) é',
        'A) N = 2D + 3.',
        'B) N = D + 3.',
        'C) N = 3D + 1',
        'D) N = D + 2.',
        'E) N = 2D + 1.',
        'a',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        25,
        'A usina de Belo Monte, no estado do Pará, é uma das maiores hidrelétricas do mundo. Possui capacidade instalada de aproximadamente 11 200 MW e fornece cerca de 4 500 MW de potência. Além disso, alaga uma região de cerca de 500 km².
        Com base apenas nos dados fornecidos para as usinas de Balbina e de Belo Monte, localizadas na região Amazônica, é possível avaliar a crítica, presente no texto, à instalação da hidrelétrica de Balbina como',
        'A) Incoerente, dado que 3 000 km² de área alagada não causam um impacto ambiental significativo para ser considerado um desastre.',
        'B) Coerente, já que são fornecidos apenas dados relativos à área alagada, que não são suficientes para analisar o impacto ambiental da usina de Balbina.',
        'C) Incoerente, uma vez que a usina de Belo Monte alaga uma região maior e tem potencial energético menor do que a usina de Balbina.',
        'D) Coerente, visto que a usina de Balbina alaga uma área maior e tem potencial energético menor do que a usina de Belo Monte.',
        'E) Incoerente, na medida em que o potencial energético de ambas as usinas é similar.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        26,
        'De acordo com o texto, os “paliteiros” mencionados se formaram',
        'A) Devido à instalação de indústrias madeireiras na Zona Franca de Manaus.',
        'B) Pela ação dos garimpeiros ilegais que poluíam as águas do rio Amazonas.',
        'C) Em consequência do aquecimento global, que impacta a flora e a fauna amazônicas.',
        'D) Pela ação de madeireiros que atuavam no município de Presidente Figueiredo.',
        'E) Em consequência da inundação do reservatório da usina hidrelétrica de Balbina.',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        27,
        'O Fator de Capacidade (η), em uma usina hidrelétrica, expressa a razão entre a capacidade real de transformação de seu potencial energético (ΔPU) e a capacidade instalada (ΔPT), ou seja, η = ΔPU / ΔPT.
        Dessa forma, o fator η de capacidade da usina hidrelétrica de Balbina é de, aproximadamente,',
        'A) 0,08.',
        'B) 0,32.',
        'C) 0,40.',
        'D) 2,50.',
        'E) 3,13.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        28,
        'É possível concluir corretamente que, em exatamente três quintos dos anos apresentados no gráfico, o desmatamento registrado ano a ano foi',
        'A) maior que 5 000 km².',
        'B) maior que 6 000 km².',
        'C) igual a 4 000 km².',
        'D) menor que 2 000 km².',
        'E) menor que 3 000 km².',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( 
        29,
        'A amplitude total, em um conjunto de dados, é a diferença entre o maior e o menor valor observado nesse conjunto. Analise o conjunto de dados apresentados no gráfico e assinale a alternativa que apresenta a sua amplitude total.',
        'A) 9 069',
        'B) 8 061',
        'C) 7 023',
        'D) 3 555',                     
        'E) 2 283',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        30,
        'Os compostos mencionados são gases',
        'A) que protegem a Terra da radiação infravermelha.',
        'B) que protegem a Terra da radiação ultravioleta.',
        'C) do efeito estufa, os quais amenizam a temperatura global.',
        'D) do efeito estufa, os quais destroem a camada de ozônio.',
        'E) do efeito estufa, os quais potencializam o aquecimento global.',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        31,
        'Por estarem localizadas próximas à linha do Equador, as regiões de clima equatorial recebem luz solar direta durante todo o ano, o que contribui para elevada umidade do ar e temperaturas altas e relativamente estáveis. Nas florestas ocorre a evapotranspiração, processo que combina a liberação de água na atmosfera, por meio da transpiração das folhas, com a evaporação da água existente no ambiente. A evapotranspiração desempenha um papel fundamental como regulador no clima porque, conforme a água evapora, ela',
        'A) contribui na formação de arco-íris por meio da refração dos raios solares, e consequentemente aquece o ambiente.',
        'B) produz gás hidrogênio, um gás combustível que pode liberar calor para o ambiente, e consequentemente o aquecer.',
        'C) libera átomos de hidrogênio e oxigênio no ambiente, consequentemente o resfriando.',
        'D) consome oxigênio do ambiente, consequentemente o resfriando.',
        'E) absorve calor do ambiente, e consequentemente o resfria.',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        32,
        'Com base no texto, é correto afirmar que os rios voadores',
        'A) despejam milhões de metros cúbicos de água por segundo no oceano Índico.',
        'B) tornam-se afluentes do rio Amazonas e deságuam nas bacias hidrográficas do sul do Brasil.',
        'C) são um dos responsáveis pelas chuvas em alguns estados brasileiros e em alguns países fronteiriços ao Brasil.',
        'D) derivam de árvores da Mata Tropical Atlântica, encravadas no alto da Cordilheira dos Andes e no Chaco paraguaio.',
        'E) nascem no oceano Atlântico e percorrem todo o litoral ocidental brasileiro até atingir as áreas situadas no centro-sul do Brasil.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        33,
        'Segundo o IBGE, no Brasil, mais de 80% da população vive em áreas urbanas. Isso, entretanto, não impede a sociedade de se mobilizar e de realizar ações que possam auxiliar na preservação das florestas e das espécies ameaçadas de extinção. Embora ninguém consiga promover grandes mudanças sozinho, algumas atitudes podem fazer a diferença na preservação do meio ambiente e da biodiversidade, como',
        'A) Evitar comprar de pequenos produtores de hortifrúti que, por produzirem em menor escala, aumentam as áreas desmatadas e, consequentemente, o impacto ambiental.',
        'B) Comprar móveis e papéis cuja matéria-prima não seja de reflorestamento ou de empresas sem certificação de fonte legal e sustentável.',
        'C) Aumentar o consumo de itens descartáveis, como guardanapos, papéis, pratos e canudos, evitando a reciclagem de produtos usados.',
        'D) Aumentar o consumo de carne bovina, pois, na criação extensiva de gado, as florestas são derrubadas para dar espaço ao pasto.',
        'E) Plantar árvores nativas, com autorização de órgãos responsáveis, para ajudar no reflorestamento de áreas urbanas e rurais.',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        34,
        'Assinale a alternativa que apresenta um projeto cujo objetivo é semelhante ao apresentado no texto.',
        'A) GASTROMOTIVA: utiliza o alimento como ferramenta de transformação social por meio da educação, da inclusão e do combate ao desperdício.',
        'B) CONSERV: remunera produtores locais que preservam vinte mil hectares de floresta e de cerrado.',
        'C) AMPARA: protege animais que foram abandonados e foram vítimas de maus-tratos.',
        'D) MÃE CANGURU: ajuda mães solo em situação de vulnerabilidade social.',
        'E) MORAR PRIMEIRO: dá moradia social para a população de rua.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        35,
        'A implantação dos SAFs é uma intervenção que visa a',
        'A) facilitar a implantação de projetos agropecuários que reduzam o tamanho da floresta e aumentem a extensão dos pastos.',
        'B) atender ao interesse de madeireiros que buscam aumentar sua renda com a venda de madeira ilegal para o exterior.',
        'C) minimizar a devastação da Floresta Amazônica, aliando o aumento de renda à redução de danos ambientais.',
        'D) colaborar com a ampliação das malhas rodoviária e ferroviária da Amazônia para facilitar o escoamento de produtos da floresta.',
        'E) apoiar o grande proprietário para que este possa ter facilidades na regularização fundiária e agregar terras indígenas ao seu patrimônio.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        36,
        'No período colonial, eram chamados de “drogas do sertão” os produtos nativos ou aclimatados que tinham origem na região Norte, onde se localizam atualmente os estados do Amazonas, do Pará e do Maranhão. Eram especiarias, castanhas, frutas, ervas, sementes, tintas e animais originários da Amazônia, como o peixe-boi e as tartarugas. O início da exploração desses produtos',
        'A) estimulou o fluxo migratório de nordestinos, que buscavam alternativas à seca; e de escravizados das regiões Sul e Sudeste que, na floresta, refugiaram-se em comunidades quilombolas.',
        'B) permitiu a integração da Amazônia ao restante da colônia, já que incentivou a abertura de estradas e ferrovias que a ligavam a diferentes partes do território nacional.',
        'C) enfraqueceu o controle e a fiscalização das fronteiras, impondo dificuldades ao Exército no monitoramento eficiente da área.',
        'D) promoveu o desenvolvimento da pecuária e o surgimento de um cinturão verde que combinava segurança jurídica, controle ambiental e inovações tecnológicas.',
        'E) combinou as necessidades portuguesas de conter a presença estrangeira na colônia e de suprir parte da demanda europeia por especiarias, já que o comércio com o Oriente estava em declínio.',
        'e',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        37,
        'De acordo com o texto, é correto afirmar que',
        'A) as plantas são uma única fábrica de produtos químicos.',
        'B) os químicos avaliam as atividades biológicas de substâncias naturalmente presentes nas plantas.',
        'C) as moléculas estudadas apresentam uma estrutura igual em qualquer planta estudada.',
        'D) alguns químicos procuram isolar e determinar a estrutura das moléculas; e outros procuram produzi-las em laboratório.',
        'E) os biólogos participam do isolamento, da determinação das estruturas moleculares e da análise das atividades biológicas dessas estruturas.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        38,
        'Sobre o contexto histórico a que o texto se refere, é correto afirmar que',
        'A) a insuficiência de mão de obra na Amazônia coincidiu com uma seca severa no Nordeste brasileiro, entre 1877 e 1879, e produziu uma grande migração de agricultores pobres do sertão em direção à Amazônia, atraídos pela dinâmica econômica do Ciclo da Borracha.',
        'B) o aumento da procura internacional por borracha provocou o declínio da atividade extrativista do látex na Amazônia, que não resistiu à concorrência dos produtores de borracha sintética do Sudeste brasileiro.',
        'C) a política de fortalecimento da indústria nacional, implementada por Getúlio Vargas, permitiu a instalação das primeiras empresas produtoras de bicicletas em território nacional e incentivou a demanda pela borracha produzida na Amazônia.',
        'D) o ápice do Ciclo da Borracha na Amazônia coincidiu com a introdução de capitais estrangeiros no Brasil, no governo de Juscelino Kubitschek, para estimular o setor de transporte, principalmente para a instalação da indústria automobilística na região metropolitana de São Paulo.',
        'E) a alta demanda de látex da Amazônia, no período chamado de Ciclo da Borracha, deve-se à dinâmica da indústria nacional de pneus que, além de produzir para o mercado interno, também exportava seus produtos para Estados Unidos, França, Argentina e México.',
        'a',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        39,
        'A relação ecológica entre a cutia e a castanheira-do-brasil, tal como descrita no texto, é denominada',
        'A) comensalismo.',
        'B) predatismo.',
        'C) mutualismo.',
        'D) parasitismo.',
        'E) competição.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        40,
        'Para estimar o volume do tronco de uma árvore, pode-se utilizar a relação V = (H ·π · r^2)÷3, na qual V indica o volume do tronco, H a altura da árvore e r é o raio da base da árvore. Utilizando as medidas fornecidas no texto e a relação matemática dada, é correto estimar o volume mínimo do tronco de uma castanheira, em m³, em cerca de',
        'A) 100π÷3.',
        'B) 200π÷3.',
        'C) 400π÷3.',
        'D) 500π÷3.',
        'E) 800π÷3.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        41,
        'Com base no texto, é correto afirmar que as castanheiras possuem',
        'A) frutos esféricos, muito duros e secos, que se abrem espontaneamente no alto das árvores, liberando as amêndoas do interior das sementes.',
        'B) estruturas reprodutivas, denominadas ouriços, com cascas suculentas e ricas em substâncias nutritivas necessárias à germinação das sementes.',
        'C) amêndoas ricas em proteínas, em carboidratos e em outras substâncias que ajudam a manter uma dieta saudável e a fortalecer a imunidade do organismo.',
        'D) sementes com substâncias tóxicas responsáveis por causar inúmeros problemas à saúde humana, como depressão, fadiga e estresse.',
        'E) sementes conhecidas como ouriços, que caem das árvores e servem de alimento para as cutias, as quais comem sua casca nutritiva.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        42,
        'Suponha que um fruto caia de uma castanheira-do-brasil, a partir do repouso, de uma altura de 45 metros do chão, em uma queda livre de qualquer força dissipativa, e assuma que a aceleração gravitacional é igual a 10 m/s². Pode-se determinar a sua velocidade ao atingir o chão por meio da equação v = √(2 ⋅ g ⋅ H), em que a velocidade (v) depende da altura de queda (H) e da aceleração gravitacional (g). Assinale a alternativa que apresenta a velocidade, em m/s, com que o fruto de uma castanheira-do-brasil atingiria o chão.',
        'A) 30.',
        'B) 25.',
        'C) 10.',
        'D) 9.',
        'E) 3.',
        'a',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        43,
        'Assinale a alternativa que apresenta a fórmula do principal componente do sal mencionado no texto.',
        'A) CaO.',
        'B) Na2O.',
        'C) CaC2.',
        'D) CaCO3',
        'E) NaC2.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        44,
        'Quando o petróleo é extraído, ele é separado em diferentes frações por meio de um processo denominado destilação fracionada. Dessas frações, obtêm-se combustíveis como gás natural, gás liquefeito de petróleo, gasolina e diesel. Esses combustíveis são de origem',
        'A) fóssil, portanto de fonte renovável.',
        'B) fóssil, portanto de fonte não renovável.',
        'C) não fóssil, portanto de fonte não renovável.',
        'D) animal, portanto de fonte renovável.',
        'E) vegetal, portanto de fonte renovável.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        45,
        'A tirinha utiliza a ironia para evidenciar que apenas o esforço, em determinadas situações, não traz resultados favoráveis ao indivíduo, levando-o à decepção vivenciada por outros. Para evitar esse desfecho, sem negligenciar os projetos de vida, deve-se',
        'A) ignorar experiências anteriores cujos resultados foram bem-sucedidos.',
        'B) permanecer dentro do que é conhecido, evitando entrar em contato com a inovação.',
        'C) imaginar cenários otimistas e sonhar com a realização de seus projetos por outros indivíduos.',
        'D) elaborar planos de ação, considerando os possíveis obstáculos à concretização de objetivos.',
        'E) confiar nos instintos e aceitar, indiscriminadamente, qualquer opinião dada por indivíduos da mesma área de atuação.',
        'd',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        46,
        'De acordo com o texto, assinale a alternativa correta.',
        'A) Qualquer animal que usa toxinas para se defender ou para subjugar uma presa possui, além de glândulas de veneno, estruturas especializadas, como dentes e ferrões.',
        'B) Os animais venenosos, como o peixe baiacu, são incapazes de injetar toxina, mas podem causar o envenenamento ao serem ingeridos por seus predadores.',
        'C) Algumas serpentes, como a cascavel e a jararaca, não são animais peçonhentos, pois produzem ou modificam algum veneno e não possuem estruturas inoculadoras.',
        'D) As rãs da família Dendrobatidae são venenosas, porque produzem potentes toxinas que são inoculadas nos predadores por meio de ferrões ao serem pressionadas.',
        'E) As aranhas e os escorpiões são animais peçonhentos, porque, quando pressionados ou atacados, eliminam, passivamente por contato, substâncias tóxicas sobre suas presas.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        47,
        'A Cabanagem, uma das chamadas Revoltas Regenciais, ocorreu em meados do século XIX, na província do Grão-Pará. De modo geral, essa revolta se caracterizou',
        'A) pela insatisfação dos donos de minas de ouro com a cobrança de impostos e com a instalação de Casas de Fundição pela administração portuguesa da colônia.',
        'B) pela combinação entre as reivindicações populares por melhores condições de sobrevivência e o desejo de ascensão política de grupos locais de médio e alto poder econômico.',
        'C) pela tentativa de separar o Brasil de Portugal, instalar o regime monárquico e abolir a escravidão, em consonância com as ideias renascentistas.',
        'D) pela exigência da realização de eleições diretas ao cargo de presidente da República, suspensas durante o período da ditadura civil-militar.',
        'E) pelas demandas trabalhistas como melhores salários, jornada de trabalho de oito horas, direito a férias e fim do trabalho infantil, entre outras.',
        'b',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        48,
        'Podemos partir do exemplo citado para inferir corretamente que a interpretação dos fenômenos da natureza',
        'A) não tem aplicações práticas no cotidiano dos povos que a realizam.',
        'B) está associada a grupos sociais biologicamente mais desenvolvidos do que os demais.',
        'C) está intrinsecamente relacionada à vivência e à cultura dos povos que a estruturam.',
        'D) não tem relação com o cotidiano vivenciado pelos povos que a desenvolvem.',
        'E) é realizada sem fundamentos teóricos ou observações da realidade.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        49,
        'O trecho faz referência à',
        'A) Rodovia dos Tamoios, instalada sobre a antiga trilha aberta pelos indígenas tamoios do litoral norte paulista e do Rio de Janeiro.',
        'B) Estrada Real, conjunto de caminhos organizados para facilitar o trânsito de metais e pedras preciosas em direção aos portos do Rio de Janeiro.',
        'C) Rodovia Transamazônica, planejada nos anos da ditadura civil-militar com o objetivo de integrar a região Norte ao restante do país.',
        'D) Estrada Velha de Santos, usada por carros de boi para o transporte de mercadorias entre o porto de Santos e a cidade de São Paulo.',
        'E) Rodovia BR–116, a maior estrada totalmente pavimentada do Brasil, que percorre 10 estados e se encerra no Rio Grande do Sul, já na fronteira com o Uruguai.',
        'c',
        2024,
        1
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        50,
        'A respeito dessa charge, pode-se concluir corretamente que',
        'A) o conhecimento da Carta Magna, promulgada em 1988, é fundamental na luta pelos direitos de povos originários.',
        'B) o gesto e os adereços da personagem expressam a submissão dos povos da América Latina ao processo de aculturação.',
        'C) os povos originários usam permanentemente a violência como ferramenta para modificar a organização sociopolítica imposta pelos não indígenas.',
        'D) a luta armada pela defesa dos direitos dos povos originários da Amazônia é garantida pela Carta de Direitos Humanos.',
        'E) os braços abertos da personagem representam o acolhimento da cultura do colonizador.',
        'a',
        2024,
        1
    );

-- INSERT TABLE tbIMAGENS PROVA 2024 1 SEMESTRE
    INSERT INTO tbImagens (cod_image, cod_question, image_data)
        VALUES 
            (1, 1, 'imgs/mapaQ1.PNG'),
            (2, 1, 'imgs/txtQ1.png'),
            (3, 5, 'imgs/txtQ5-7.PNG'),
            (4, 9, 'imgs/txtQ9-11.PNG'),
            (5, 12, 'imgs/mapaQ12.PNG'),
            (6, 13, 'imgs/txtQ13-15.PNG'),
            (7, 16, 'imgs/txtQ16-17.PNG'),
            (8, 19, 'imgs/txtQ19-21.PNG'),
            (9, 22, 'imgs/txtQ22.PNG'),
            (10, 23, 'imgs/txtQ23.PNG'),
            (11, 24, 'imgs/tabelaQ24.PNG'),
            (12, 25, 'imgs/txtQ25-27.PNG'),
            (13, 28, 'imgs/grafQ28-29.PNG'),
            (14, 30, 'imgs/txtQ30.PNG'),
            (15, 32, 'imgs/txtQ32.PNG'),
            (16, 34, 'imgs/txtQ34.PNG'),
            (17, 35, 'imgs/txtQ35.PNG'),
            (18, 37, 'imgs/txtQ37.PNG'),
            (19, 38, 'imgs/txtQ38.PNG'),
            (20, 39, 'imgs/txtQ39-42.PNG'),
            (21, 43, 'imgs/txtQ43.PNG'),
            (22, 45, 'imgs/txtQ45.PNG'),
            (23, 46, 'imgs/txtQ46.PNG'),
            (24, 48, 'imgs/txtQ48.PNG'),
            (25, 49, 'imgs/txtQ49.PNG'),
            (26, 50, 'imgs/txtQ50.PNG');

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

-- INSERT TABLE tbQUESTIONS PROVA 2022 1 SEMESTRE
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        141,
        'Suponha que, no momento da entrevista, a unidade escolar mencionada no texto registrava um índice de evasão escolar de cerca de 30 % em relação aos alunos matriculados no início do ano letivo. Logo, o número de alunos matriculados no início do mesmo ano, nessa unidade escolar, era aproximadamente',
        'A) 1 200.',
        'B) 1 040.',
        'C) 980.',
        'D) 860.',
        'E) 630.',
        'D',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        142,
        'Sobre os tipos de desemprego citados, podemos afirmar corretamente que',
        'A) o desemprego estrutural é passageiro, pois quando a economia de um determinado país começa a melhorar os empregos retornam e as pessoas se reempregam.',
        'B) o desemprego estrutural está ligado à adoção de novas máquinas e robôs nas empresas que os adotam para substituir o trabalho humano.',
        'C) o desemprego conjuntural diminui em tempos de crise econômica e aumenta quando a economia mostra sinais de vitalidade.',
        'D) o desemprego conjuntural será zerado quando todas as máquinas e robôs forem destruídos pelos trabalhadores.',
        'E) o desemprego conjuntural e o desemprego estrutural são sinônimos, pois definem o mesmo tipo de desemprego.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        143,
        'A técnica de controle biológico descrita no texto consiste na',
        'A) introdução de insetos prejudiciais à agricultura, uma vez que se alimentam de tecido vegetal.',
        'B) aplicação de inseticidas, a fim de diminuir o número de organismos causadores das pragas presentes em culturas de hortaliças e de árvores frutíferas.',
        'C) utilização de sementes previamente selecionadas e no emprego de fertilizantes, a fim de expandir as plantações de soja e de outras lavouras.',
        'D) utilização de inimigos naturais específicos, como predadores, a fim de combater os organismos causadores de danos às plantações.',
        'E) introdução de insetos parasitas na plantação, a fim de impedir que os seres causadores da praga cheguem à fase reprodutiva.',
        'D',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        144,
        'Considere uma recomendação para adubação de 500 kg/ha, sendo o espaçamento entre os sulcos de 60 cm. A massa de adubo que deverá ser utilizada, em kg, em um sulco com 150 m de comprimento, é de',
        'A) 3,0.',
        'B) 4,5.',
        'C) 30,0.',
        'D) 450,0.',
        'E) 4 500,0.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        145,
        'No período abordado pelo texto, os humanos',
        'A) mostraram-se incapazes de suprir suas necessidades básicas de sobrevivência, o que os fez viver exclusivamente da caça, da pesca e da coleta.',
        'B) viviam de forma muito semelhante à dos demais animais, sem desenvolver técnicas capazes de melhorar a vida em sociedade.',
        'C) aprenderam a reconhecer e a cultivar vegetais comestíveis e ervas curativas e, consequentemente, desenvolveram a agricultura.',
        'D) desconheciam formas de exploração e utilização de recursos naturais, como vegetais comestíveis e ervas curativas.',
        'E) reuniram um conjunto de saberes e técnicas de trabalho e desenvolveram um modo de vida em sociedade.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        146,
        'No texto apresentado, o eu lírico tece reflexões sobre sua vida e sua realidade. Algumas delas evidenciam aspectos sociais relevantes, tais como',
        'A) a garantia da felicidade pelo acúmulo financeiro, como representado no verso 8.',
        'B) a visibilidade social da classe trabalhadora, como representado no verso 9. ',
        'C) as vantagens da utilização do transporte público, como representado no verso 12.',
        'D) a busca ininterrupta pela felicidade por meio do consumo constante, como representado no verso 22. ',
        'E) o potencial de transformação social das classes desfavorecidas, como representado no verso 24',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        147,
        'O rap é um estilo musical urbano caracterizado pela declamação ritmada de suas letras. Outra característica marcante desse gênero encontra-se na utilização de diferentes níveis de linguagem. Assinale a alternativa em que todas as palavras pertencem à linguagem coloquial.',
        'A) ser, ontem, menina, cê.',
        'B) cê, tô, pra, busão.',
        'C) pra, dim, horizonte, esperança.',
        'D) dim, chance, paz, latinha.',
        'E) sol, cruza, mamãe, amordaçado.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        148,
        'Sobre a passagem “Tô com a paciência de quem junta latinha / Focado no que tenho, não no que vou ter ou tinha”, é correto afirmar que o eu lírico',
        'A) sente-se dividido entre o passado, marcado pela culpa, e o futuro, marcado pelo medo e pelas incertezas.',
        'B) está, apesar das condições sociais, paciente e procura se manter centrado no presente vivenciando cada dia isoladamente.',
        'C) encontra-se inquieto diante de suas condições sociais, revendo o passado para não errar no futuro, mas ignorando o presente.',
        'D) permanece, durante o seu trabalho, concentrado na realização de suas tarefas para evitar relembrar suas experiências passadas.',
        'E) recorre à coleta de materiais recicláveis como metáfora para a imprudência de vivenciar apenas o presente, sem se preocupar com o futuro.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        149,
        'Nos versos 1 e 2, Emicida nos remete ao',
        'A) amanhecer e a um novo dia com gosto de frustação.',
        'B) amanhecer e à existência de uma nova interrogação.',
        'C) amanhecer e a uma nova oportunidade para sermos melhores.',
        'D) anoitecer e ao arrependimento do dia que se foi.',
        'E) anoitecer e à paralização dos sonhos.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        150,
        'Considere que um mês tem, em média, uma duração de 4,5 semanas, assim, é correto afirmar que',
        'A) x > y > z.',
        'B) y > x > z.',
        'C) z > x > y.',
        'D) x > z > y.',
        'E) y > z > x.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        151,
        'Com base nessas informações, são imóveis que estão fora da zona de ruído',
        'A) A e B.',
        'B) A e C.',
        'C) A e D.',
        'D) B e C.',
        'E) B e D.',
        'A',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        152,
        'Entre as principais características do sistema de produção mencionado no texto, podemos apontar corretamente',
        'A) a informatização, a substituição dos trabalhadores por robôs e o consequente aumento dos índices de desemprego.',
        'B) a redução da jornada de trabalho, a ampliação dos direitos trabalhistas e o incentivo ao ócio e à criatividade dos trabalhadores.',
        'C) a produção artesanal de mercadorias, realizada em espaços domésticos; e a utilização de mão de obra escravizada, proveniente da África.',
        'D) a linha de montagem automatizada, com a utilização de esteiras rolantes; e a especialização produtiva do trabalhador, que realizava parte das etapas da produção.',
        'E) a localização das fábricas, que privilegiava a criação de empregos nos países pobres; e o investimento na formação do trabalhador, que deveria conhecer todas as etapas do processo produtivo.',
        'D',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        153,
        'As previsões de Malthus não se concretizaram, pois',
        'A) a população mundial diminuiu lenta e continuamente, até os dias de hoje e, portanto, a necessidade por alimentos também diminuiu no mesmo ritmo.',
        'B) os trabalhadores urbanos, na Revolução Industrial, dividiam seu tempo entre o trabalho em fábricas e em atividades ligadas à horticultura, cultivando seu próprio alimento e, dessa forma, acabando com a fome no mundo.',
        'C) novas tecnologias surgiram e foram incorporadas ao processo produtivo nos campos, fazendo aumentar a produção de alimentos, em função do desenvolvimento tecnológico proporcionado pela Revolução Industrial.',
        'D) as pessoas se dirigiram em grande quantidade, com o avanço da Revolução Industrial, para as zonas rurais atrás de emprego, causando um esvaziamento das cidades e aumentando a produção de gêneros alimentícios nos campos.',
        'E) os proprietários das fábricas, durante a Revolução Industrial, preocupados com a qualidade de vida de seus trabalhadores e de suas famílias, criaram um projeto de distribuição de cestas básicas para as famílias de trabalhadores sindicalizados, com o intuito de fidelizar a mão de obra.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        154,
        'Sobre os elementos coesivos destacados no texto, é correto afirmar que',
        'A) “para”, no segundo parágrafo, expressa ideia de finalidade, evidenciando o objetivo de um empreendedor tradicional, e tem sentido equivalente a “a fim de”.',
        'B) “para”, no terceiro parágrafo, é utilizado para indicar a direção de um projeto social e pode ser substituído pela expressão “defronte a”.',
        'C) “porém”, no terceiro parágrafo, expressa ideia de consequência, pois a geração de renda leva à redução de desigualdade social, e equivale a “entretanto”',
        'D) “e”, no terceiro parágrafo, apesar de ser normalmente utilizado para expressar sentido de adição, no texto é empregado como oposição, equivalendo a “mas”.',
        'E) “uma vez que”, no quarto parágrafo, corresponde a “porque”, pois explica a eficácia da atuação do empreendedor social diante de problemas muito complexos.',
        'A',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        155,
        'Com base nas informações apresentadas no texto, é correto afirmar que',
        'A) os conceitos de empreendedorismo estão conectados essencialmente à aquisição de lucro monetário.',
        'B) a fragilidade do serviço social é resultado do financiamento contínuo e da complexidade do problema abordado.',
        'C) o empreendedorismo social pode ser voltado tanto à melhoria de uma comunidade quanto à obtenção de retorno financeiro.',
        'D) os empreendedores sociais privilegiam investimentos em ações nas bolsas de valores, que possibilitam compartilhar eventuais prejuízos.',
        'E) o conceito de serviço social é similar ao do empreendedorismo social, pois ambos são ações individuais voltadas à formação de agremiações políticas.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        156,
        'Segundo as definições apresentadas no texto, são exemplos de empreendedorismo social as ações presentes em',
        'A) I apenas.',
        'B) II apenas.',
        'C) III apenas.',
        'D) I e II apenas.',
        'E) II e III apenas.',
        'D',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        157,
        'De acordo com o texto, os plásticos são',
        'A) produzidos diretamente do petróleo, formando pequenas moléculas que serão moldadas.',
        'B) compostos obtidos por reações que usam matéria-prima proveniente do petróleo.',
        'C) macromoléculas com propriedades variadas e não podem ser moldados.',
        'D) estruturas que estão sendo substituídas por outros materiais como o vidro.',
        'E) grandes moléculas que darão origem ao petróleo.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        158,
        'Os plásticos podem ser moldados, pois “amolecem” com o calor, chegando a sofrer fusão em determinadas temperaturas. O quadro apresenta o ponto de fusão de alguns tipos de plásticos. Um técnico de laboratório aquece separada e simultaneamente amostras, com massas iguais, de cada um dos cinco plásticos do quadro, que estão à mesma temperatura inicial. O primeiro plástico que sofrerá fusão será o',
        'A) PS.',
        'B) PP.',
        'C) PE.',
        'D) PET.',
        'E) PVC.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        159,
        'Em uma usina de reciclagem, os plásticos são separados por diferença de densidade para, posteriormente, serem fundidos e remoldados em novos objetos. O quadro apresenta a densidade de alguns plásticos. Em um tanque com água, colocamos objetos maciços confeccionados com os plásticos mencionados. Os objetos que ficam flutuando na superfície da água são confeccionados com',
        'A) PET e PVC.',
        'B) PP e PE.',
        'C) PS e PVC.',
        'D) PET, PS e PVC.',
        'E) PE, PS e PET.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        160,
        'De acordo com o texto, é correto afirmar que',
        'A) as embalagens de latas de flandres, de vidros e de multilaminados vêm substituindo as embalagens PET.',
        'B) os plásticos são amplamente utilizados desde sua descoberta no Brasil, em 1941.',
        'C) o petróleo tem origem nos plásticos que passaram pelo processo de reciclagem.',
        'D) os plásticos não se deformam, mesmo quando expostos às altas temperaturas.',
        'E) o petróleo é a fonte de diversos tipos de matérias-primas e de combustíveis.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        161,
        'As latas de flandres, mencionadas no texto, são feitas de uma',
        'A) mistura revestida de estanho.',
        'B) substância pura revestida de aço.',
        'C) mistura revestida de ferro e carbono.',
        'D) substância composta revestida de ferro.',
        'E) substância simples revestida de estanho.',
        'A',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        162,
        'Essa crise econômica',
        'A) ficou restrita aos Estados Unidos, pois, no início do século XX, as economias nacionais eram fechadas e, portanto, as crises eram localizadas.',
        'B) causou impactos duradouros na economia mundial, abalou os mercados financeiros ao redor do mundo e provocou a falência de inúmeras empresas e o desemprego.',
        'C) provocou o aumento da atividade industrial e do emprego nos países africanos, que não foram abalados pela crise provocada pelo mercado de ações nos Estados Unidos.',
        'D) demonstrou a força da economia brasileira, que investiu na modernização das lavouras, aumentando a produção e, consequentemente, a exportação do café.',
        'E) confirmou a independência dos mercados financeiros, uma vez que foi contornada sem a necessidade de intervenção dos governos na economia.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        163,
        'Com base nas informações do texto, pode-se concluir corretamente que',
        'A) os profissionais da área médica, que atuam no desenvolvimento de vacinas, desenvolvem imunidade a determinadas doenças e, por isso, não se contaminam, nem transmitem os agentes causadores da doença para seus pacientes.',
        'B) as vacinas, que são aprovadas pelas agências reguladoras, podem ser produzidas e aplicadas na população a fim de atuarem na prevenção das doenças através de anticorpos específicos produzidos pelo organismo humano.',
        'C) a pandemia pode ser definida como a concentração de casos de uma mesma doença em um determinado local sem provocar o alastramento em outras regiões.',
        'D) as vacinas possuem os anticorpos obtidos a partir dos agentes causadores da doença e são eficazes no tratamento dos pacientes contaminados.',
        'E) a vacina específica para Covid–19 demorou muito tempo para ser produzida, pois a bactéria causadora da doença era totalmente desconhecida.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        164,
        'A análise dos textos nos permite concluir corretamente que',
        'A) na Idade Média crianças e adolescentes, ao chegarem à vida adulta, desempenhariam as atividades reservadas ao seu grupo social; no Brasil do século XXI, os estudantes têm liberdade para fazer escolhas de acordo com seus desejos e objetivos.',
        'B) a lei garante que, no Brasil do século XXI, ao alcançar a vida adulta, crianças e adolescentes serão sustentados pelos programas sociais do Estado, independente de seu esforço, organização e planejamento pessoal.',
        'C) na Idade Média crianças e adolescentes podiam escolher entre ser militares, camponeses ou artesãos; no Brasil do século XXI, os estudantes têm opções de carreira limitadas pela BNCC.',
        'D) crianças e adolescentes, no Brasil do século XXI, assim como na Idade Média, não são reconhecidos e, por isso, devem se comportar de acordo com os desejos e objetivos dos adultos.',
        'E) na Idade Média os pais se preocupavam com o futuro de seus filhos, uma vez que era preciso ser artesão ou camponês para pertencer à aristocracia feudal.',
        'A',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        165,
        'Com relação aos tipos de alimentos, às orientações e aos problemas nutricionais, assinale o que for correto.',
        'A) Na promoção da alimentação saudável para diminuição de casos de obesidade e hipertensão, deve-se incentivar o consumo de alimentos industrializados e gordurosos na dieta da população.',
        'B) A celulose presente nas fibras de alimentos como grãos, verduras, legumes e frutas não é digerida pelo organismo humano, não fornece calorias, mas estimula o trânsito intestinal.',
        'C) Uma alimentação adequada apresenta grande consumo de frutas e outros vegetais, bem como a alta ingestão de gorduras saturadas, sal e carboidratos.',
        'D) O rótulo do alimento que contém a classificação Zero Lactose informa que esse alimento não tem valor calórico e é indicado para pacientes diabéticos.',
        'E) Os alimentos como arroz, macarrão e batatas devem ser retirados da dieta, pois não fornecem nenhuma vantagem ao organismo.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        166,
        'Assinale a alternativa que completa, correta e respectivamente, a frase',
        'A) diminui, exotérmica, libera',
        'B) diminui, endotérmica, absorve',
        'C) aumenta, endotérmica, libera',
        'D) aumenta, endotérmica, absorve',
        'E) aumenta, exotérmica, libera',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        167,
        'Sobre esta doença, pode-se afirmar corretamente que é',
        'A) contagiosa, ou seja, pode ser transmitida de pessoa para pessoa e também pelo consumo de água contaminada.',
        'B) limitada a regiões tropicais devido à falta de saneamento básico e à presença do protozoário causador desse tipo de enfermidade.',
        'C) prevenida com o tratamento da água e do esgoto; a higienização dos alimentos e das mãos; e a evitação de locais com água parada.',
        'D) evitada pela substituição de casas de pau a pique por casas de alvenaria, pois os insetos transmissores se reproduzem nas paredes das casas de barro.',
        'E) causada por um tipo de vírus transmitido pela picada de mosquitos contaminados e, entre seus principais sintomas, destacam-se a febre, as dores no corpo e as manchas vermelhas.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        168,
        'Os processos físicos descritos são denominados, respectivamente, de',
        'A) floculação e decantação.',
        'B) decantação e filtração.',
        'C) filtração e cloração.',
        'D) floculação e filtração.',
        'E) decantação e cloração.',
        'B',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        169,
        'Considerando esse hemograma, pode-se concluir que Pedro tem',
        '(A) um processo infeccioso.',
        '(B) problemas na coagulação do sangue.',
        '(C) dificuldade no transporte de oxigênio no sangue.',
        '(D) hipersensibilidade do sistema imunológico a determinadas substâncias.',
        '(E) uma doença causada pela produção insuficiente ou má absorção de insulina.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        170,
        'Assinale a alternativa que apresenta as expressões algébricas da área e do perímetro do painel decorativo de espelhos.',
        'Área: 3xy Perímetro: 3x + y',
        'Área: 3 + xy Perímetro: 3x y',
        'Área: 6x + 2y Perímetro: 6x + 2y',
        'Área: 3x y Perímetro: 6x + y 2',
        'Área: 3x y Perímetro: 3x + y',
        'D',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        171,
        'No painel decorativo, a primeira fileira de baixo para cima é toda formada por espelhos retangulares de mesmo comprimento. Se o painel tiver um total de 3 metros de comprimento, então a medida do comprimento de cada espelho, em centímetros, é',
        '(A) 300.',
        '(B) 100.',
        '(C) 75.',
        '(D) 50.',
        '(E) 25.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        172,
        'Assinale a alternativa que apresenta corretamente uma dessas práticas ambientais.',
        '(A) Jogar o lixo em valas e nas encostas para ser levado pela água da chuva até os pontos mais baixos, onde estão os canais de drenagem, os rios e os bueiros.',
        '(B) Impermeabilizar as vias públicas, os quintais e as calçadas, a fim de impedir que grande parte do volume de água precipitado pelas chuvas penetre no solo.',
        '(C) Permitir os processos de assoreamento, a erosão e a sedimentação nos rios, a fim de dificultar o transbordamento dos cursos de água.',
        '(D) Diminuir a eficiência dos sistemas de drenagem, que visam conter ou escoar o curso das enxurradas por meio de bocas-de-lobo, piscinões ou dutos.',
        '(E) Construir e preservar áreas verdes uma vez que a vegetação facilita o processo de infiltração da água da chuva no solo.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        173,
        'De acordo com o texto, é correto afirmar que “pejotização”',
        '(A) obriga os patrões a constituírem uma empresa para registrar seus funcionários em carteira de trabalho.',
        '(B) é uma norma constitucional que obriga os advogados a pagarem os custos dos processos trabalhistas.',
        '(C) é uma prática adotada por empresas que pretendem reduzir os custos sobre sua folha de pagamento e deriva da expressão “pessoa jurídica”.',
        '(D) transfere o pagamento de encargos previdenciários e trabalhistas para os governos municipais, de acordo com a Consolidação das Leis do Trabalho.',
        '(E) exige que os trabalhadores de entrega por aplicativos criem empresas cooperativadas para facilitar o registro em carteira dessa categoria pelas empresas contratantes.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        174,
        'Dentre as alternativas, assinale aquela que melhor representa esse princípio.',
        '(A)',
        '(B)',
        '(C)',
        '(D)',
        '(E)',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        175,
        'A partir da leitura do mapa, pode-se afirmar corretamente que',
        '(A) os bandeirantes, em suas expedições, respeitaram os limites territoriais definidos pelo Tratado de Tordesilhas, em 1494.',
        '(B) as bandeiras se originaram nos territórios espanhóis do atual Uruguai e, de lá, percorreram a América do Sul em todas as direções.',
        '(C) a ação das bandeiras contribuiu para a ampliação dos limites territoriais do Brasil para além daqueles definidos, em 1494, pelo Tratado de Tordesilhas.',
        '(D) o processo de colonização do Brasil se iniciou na região de Olinda e Recife, de onde partiram as principais rotas dos bandeirantes.',
        '(E) as fronteiras atuais do Brasil foram definidas no final do século XVIII, quando as expedições bandeirantes terminaram.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        176,
        'Aplicando o conceito de densidade, a massa de alumínio, em gramas, que será reciclada de uma escultura que ocupa o volume de 50 cm^3, é',
        '(A) 2,7.',
        '(B) 13,5.',
        '(C) 27,0.',
        '(D) 135,0.',
        '(E) 270,0.',
        'D',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        177,
        'Com base na interpretação dos quadrinhos, pode-se concluir corretamente que',
        '(A) a emoção se liberta facilmente dos erros do passado e do medo de errar.',
        '(B) a razão supera o medo de errar depois de a emoção se libertar dos erros do passado.',
        '(C) a razão é a única responsável por guiar as ações de se libertar do passado e por errar no percurso da vida.',
        '(D) a emoção norteia as decisões futuras e a razão apenas analisa os erros do passado.',
        '(E) a razão e a emoção devem avançar juntas, libertando-se dos erros do passado e do medo de errar.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        178,
        'De acordo com os textos, o trabalho infantil',
        '(A) foi liberado pela ONU para as crianças com menos de 14 anos durante a pandemia de COVID–19.',
        '(B) é coordenado pela UNICEF, que regulariza essa prática em todos os países do mundo.',
        '(C) é incentivado pelo Estado para que as crianças ajudem nas despesas de casa.',
        '(D) foi eliminado do Brasil, mas está em crescimento nos outros países do mundo.',
        '(E) é ilegal e dificulta a vida escolar e o desenvolvimento saudável da criança.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        179,
        'Assinale a frase que é um contraponto ao posicionamento da personagem sobre o medo.',
        '(A) “Aprendi que a coragem não é a ausência do medo, mas o triunfo sobre ele”. (Nelson Mandela)',
        '(B) “Um dos efeitos do medo é perturbar os sentidos e fazer que as coisas não pareçam o que são”. (Miguel de Cervantes).',
        '(C) “O medo é, dos sentimentos humanos, o mais dissolvente, porque nos leva a fazer muita coisa que não queremos fazer, e deixar de fazer muita coisa que queríamos e necessitávamos fazer”. (Josué de Castro)',
        '(D) “O medo é a extrema ignorância em momento muito agudo”. (João Guimarães Rosa)',
        '(E) “Os homens se dividem em duas espécies: os que têm medo de viajar de avião e os que fingem que não têm”. (Fernando Sabino)',
        'A',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        180,
        'Sobre a ação do sabão, é correto afirmar que',
        '(A) sua capacidade de interagir com as moléculas de água permite transformar a gordura em outras substâncias mais solúveis na água.',
        '(B) sua interação com as moléculas de gordura se deve à extremidade da sua estrutura denominada cabeça.',
        '(C) interage com as moléculas de água por meio da extremidade conhecida como cauda.',
        '(D) remove as moléculas de água presentes na nossa pele, mantendo sobre ela as de gordura.',
        '(E) está relacionada à capacidade de interação da sua estrutura tanto com água quanto com gordura.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        181,
        'Analisando o infográfico, podemos concluir corretamente que',
        '(A) o vírus está envolto por uma camada de gordura que ajuda a infectar as células humanas.',
        '(B) o material genético do vírus está localizado nas proteínas que ajudam a infectar as nossas células.',
        '(C) o sabão rompe a camada de gordura protetora do vírus, liberando seu material genético, que será levado pela água.',
        '(D) a parte da estrutura do sabão que interage com a água é denominada hidrofóbica.',
        '(E) a extremidade do sabão que quebra a membrana lipídica do vírus é denominada hidrofílica.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        182,
        'Releia atentamente a passagem apresentada, observando o contexto de ocorrência dos termos em destaque. Assinale a alternativa que apresenta, respectivamente, sinônimos adequados às palavras destacadas.',
        '(A) rigorosamente, em cima das, certamente, especificidade e condicionamento',
        '(B) afetuosamente, por respeito às, ocasionalmente, temperamento e simpatia',
        '(C) avidamente, a respeito das, porventura, honestidade e qualidade',
        '(D) rispidamente, durante, às vezes, incapacidade e aparência',
        '(E) seriamente, acerca das, possivelmente, índole e habilidade',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        183,
        'O trecho apresentado mostra o personagem Harry Potter, protagonista de uma série de livros infantojuvenis, no momento de escolha de sua carreira. Com base nas informações do trecho, depreende-se corretamente que a escolha de uma profissão',
        '(A) não deve ser abordada pela escola a fim de não influenciar a decisão a ser feita pelos estudantes.',
        '(B) independe do desempenho e do desenvolvimento acadêmico do estudante durante sua vida escolar.',
        '(C) exige a intervenção de profissionais da educação para, por meio de coerção, impor opções adequadas socialmente aos jovens.',
        '(D) dispensa o acompanhamento das tendências de mercado de trabalho para, assim, elaborarem-se as disciplinas ofertadas aos estudantes.',
        '(E) pressupõe o auxílio da escola aos estudantes no processo de construção do autoconhecimento e de planejamento para alcançar seus objetivos.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        184,
        'Considerando que exista um total de 12 N.I.E.M.s, a alternativa cujo esquema representa o percentual mais próximo do número mínimo de N.I.E.M.s que um estudante de Hogwarts deve ter cursado para estar apto a seguir a carreira de auror é',
        '(A)',
        '(B)',
        '(C)',
        '(D)',
        '(E)',
        'A',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        185,
        'Entre elas, é correto mencionar',
        '(A) a Greve Geral de 1917, encabeçada pelos escravos de ganho de São Paulo e Rio de Janeiro.',
        '(B) a greve de fome realizada por Nelson Mandela na prisão, em Joanesburgo, na África do Sul, em 1948.',
        '(C) a onda de rebeliões de escravizados que se iniciou nas fazendas de café na Amazônia e no Rio Grande do Sul.',
        '(D) a revolução do Haiti, que derrubou o governo colonial português e estabeleceu a primeira monarquia das Américas.',
        '(E) a formação de quilombos, comunidades estabelecidas por escravos fugidos em diferentes partes do Brasil.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        186,
        'Os eventos descritos no texto',
        '(A) precipitaram a abolição da escravidão e a qualificação profissional dos libertos, que passaram a exercer profissões especializadas.',
        '(B) desorganizaram o núcleo urbano do Rio de Janeiro, impedindo a realização de obras públicas e, consequentemente, causando desemprego e precarização do trabalho.',
        '(C) provocaram a diminuição da população da colônia, que caiu pela metade no início do século XIX, em razão da instabilidade provocada pela chegada de grande número de imigrantes.',
        '(D) incentivaram a industrialização acelerada do Sudeste, especialmente de São Paulo, e a formação de uma classe operária influenciada por ideias trazidas por italianos e alemães.',
        '(E) promoveram uma modernização urbana que atraiu profissionais qualificados da Europa, mas não alteraram as estruturas escravistas da sociedade brasileira do século XIX.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        187,
        'De acordo com a reportagem, é correto afirmar que',
        '(A) as pessoas resgatadas do trabalho análogo ao escravo serão deportadas para seu país de origem.',
        '(B) o trabalho escravo foi legalmente extinto no Brasil no século XX, mas ainda resiste em alguns bairros periféricos da capital paulista.',
        '(C) a entrada de imigrantes é proibida no bairro do Bom Retiro, o que caracteriza a situação de trabalho análogo ao escravo desses imigrantes.',
        '(D) os trabalhadores resgatados apresentavam carteira assinada e cumpriam uma jornada de trabalho legal, de acordo com a legislação trabalhista brasileira.',
        '(E) um dos elementos que caracterizam o trabalho análogo ao escravo são as condições degradantes de trabalho, constatadas pela Operação Andrápodon.',
        'E',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        188,
        'De acordo com o texto, é correto afirmar que os trabalhadores rurais',
        '(A) conseguiram o acesso aos direitos trabalhistas no ano de 1964.',
        '(B) são em maior número que os trabalhadores urbanos no Brasil de hoje.',
        '(C) tiveram os direitos trabalhistas equiparados aos dos trabalhadores urbanos em 1988.',
        '(D) foram reconhecidos como trabalhadores, a partir da Constituição de 1988.',
        '(E) têm a obrigação de participar do FGTS e da Previdência Privada.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        189,
        'De acordo com a fábula,',
        '(A) o imperador esperava que os garotos percebessem a troca das sementes e as substituíssem para demonstrarem que eram astutos.',
        '(B) qualquer outro garoto merecia ser o imperador, pois suas plantas floresceram enquanto o vaso de Ping estava vazio.',
        '(C) o conselho do pai encorajou Ping a ser honesto e a apresentar seu resultado, mesmo que negativo.',
        '(D) devemos nos omitir, quando nossa ação não represente uma vitória, para sermos bem-sucedidos.',
        '(E) as sementes dos demais garotos brotaram mesmo queimadas e seus vasos tinham lindas flores.',
        'C',
        2022,
        1
    );
    INSERT INTO tbQuestions (cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES (
        190,
        'Com base no texto, uma atitude semelhante à do personagem Ping é',
        '(A) ser desleal ao alcançar lucros financeiros.',
        '(B) ser empático às pessoas em situação de risco.',
        '(C) dizer a verdade independentemente das consequências.',
        '(D) esconder os fatos verdadeiros ao visar aos próprios interesses.',
        '(E) agir com rapidez e inteligência para ficar com o troco recebido a mais após uma compra.',
        'C',
        2022,
        1
    );

-- INSERT TABLE tbIMAGENS PROVA 2022 1 SEMESTRE
    INSERT INTO tbImagens (cod_question, image_data)
        VALUES
            (141, 'imgs/txtQ1.PNG'),
            (142, 'imgs/txtQ2.PNG'),
            (143, 'imgs/txtQ3.PNG'),
            (144, 'imgs/txtQ4.PNG'),
            (145, 'imgs/txtQ5.PNG'),
            (146, 'imgs/txtQ6-9.PNG'),
            (150, 'imgs/txtQ10-11.PNG'),
            (151, 'imgs/txtQ11.PNG'),
            (152, 'imgs/txtQ12.PNG'),
            (153, 'imgs/txtQ13.PNG'),
            (154, 'imgs/txtQ14-16.PNG'),
            (154, 'imgs/txtQ14.PNG'),
            (156, 'imgs/txtQ16.PNG'),
            (157, 'imgs/txtQ17-21.PNG'),
            (158, 'imgs/txtQ18.PNG'),
            (159, 'imgs/txtQ19.PNG'),
            (162, 'imgs/txtQ22.PNG'),
            (163, 'imgs/txtQ23.PNG'),
            (164, 'imgs/txtQ24.PNG'),
            (165, 'imgs/txtQ25.PNG'),
            (166, 'imgs/txtQ26.PNG'),
            (167, 'imgs/txtQ27.PNG'),
            (168, 'imgs/txtQ28.PNG'),
            (169, 'imgs/txtQ29.PNG'),
            (170, 'imgs/txtQ30-31.PNG'),
            (172, 'imgs/txtQ32.PNG'),
            (173, 'imgs/txtQ33.PNG'),
            (174, 'imgs/txtQ34.PNG'),
            (174, 'imgs/txtQ34-1.PNG'),
            (174, 'imgs/txtQ34A.PNG'),
            (174, 'imgs/txtQ34B.PNG'),
            (174, 'imgs/txtQ34C.PNG'),
            (174, 'imgs/txtQ34D.PNG'),
            (174, 'imgs/txtQ34E.PNG'),
            (175, 'imgs/txtQ35.PNG'),
            (175, 'imgs/txtQ35-1.PNG'),
            (176, 'imgs/txtQ36.PNG'),
            (177, 'imgs/txtQ37.PNG'),
            (178, 'imgs/txtQ38.PNG'),
            (179, 'imgs/txtQ39.PNG'),
            (180, 'imgs/txtQ40-41.jpg'),
            (182, 'imgs/txtQ42-44.PNG'),
            (184, 'imgs/txtQ44.PNG'),
            (185, 'imgs/txtQ45.PNG'),
            (186, 'imgs/txtQ46.PNG'),
            (187, 'imgs/txtQ47.PNG'),
            (188, 'imgs/txtQ48.PNG'),
            (189, 'imgs/txtQ49-50.PNG');

-- INSERT TABLE tbQUESTIONS PROVA 2015 1 SEMESTRE
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (641, -- questão 1
                'Nessa micrografia, as estruturas celulares numeradas por 1 e 2 são denominadas, respectivamente,', 
                'A) núcleo e mitocôndrias.', 
                'B) parede celular e cloroplastos.', 
                'C) retículo endoplasmático e plastos.', 
                'D) complexo golgiense e ribossomos.', 
                'E) membrana plasmática e centríolos.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (642, -- questão 2
                'Analisando as características da pintura apresentada, é correto concluir que se trata de uma obra', 
                'A) medieval e cavalheiresca.', 
                'B) medieval e teocêntrica.', 
                'C) classicista e modernista.', 
                'D) renascentista e antropocêntrica.', 
                'E) renascentista e ateísta.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (643, -- questão 3
                'Assim sendo, se a medida do maior lado da tela for de 40 cm, então, a medida do menor lado será, em centímetros, aproximadamente,', 
                'A) 22,94.', 
                'B) 24,72.', 
                'C) 28,54.', 
                'D) 36,26.', 
                'E) 64,72.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (644, -- questão 4
                'Sobre o texto e a imagem, é correto afirmar que', 
                'A) a artista escolheu um objeto que pouco se relaciona com o elemento escolhido.', 
                'B) a bauxita é matéria-prima para obtenção desse elemento.', 
                'C) a finalidade era promover o refrigerante.', 
                'D) o elemento representado pela artista possui número atômico 355.', 
                'E) o elemento escolhido é mau condutor de corrente elétrica e térmica.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (645, -- questão 5
                'A imagem produzida pela artista Ellen Brooks representa o elemento químico', 
                'A) antimônio.', 
                'B) arsênio.', 
                'C) astato.', 
                'D) argônio.', 
                'E) alumínio.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (646, -- questão 6
                'Além dos aspectos descritos, pode-se afirmar que essa planta se caracteriza pela', 
                'A) ausência de raízes.', 
                'B) ausência de vasos condutores de seiva.', 
                'C) presença de flores, frutos e sementes.', 
                'D) presença de sementes comestíveis.', 
                'E) presença de frutos comestíveis.',
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (647, -- questão 7
                'Assinale a alternativa que apresenta corretamente a área mais utilizada no período colonial para o plantio de cana-de-açúcar e o seu tipo de solo predominante.', 
                'A) A zona da mata, com solo massapé, de cor escura.', 
                'B) O triângulo mineiro, com solo aluvial vermelho-amarelado.', 
                'C) O vale do Paraíba, com solo tchernozion bastante claro.', 
                'D) O vale do Ribeira, com solo terra roxa, muito avermelhado.', 
                'E) A campanha gaúcha, com predomínio do solo salmorão alaranjado.', 
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (648, -- questão 8
                'Sobre esse tema, podemos afirmar corretamente que', 
                'A) a rapidez da inovação tecnológica não induz ao aumento de consumo, pois as mercadorias produzidas há mais tempo não conseguiriam ser vendidas, levando a um colapso do mercado varejista.', 
                'B) a ampliação do consumo não leva a uma crise ambiental, pois a quantidade de matérias primas disponíveis no planeta aumenta na mesma proporção que a fabricação de produtos industriais.', 
                'C) o desenvolvimento tecnológico não gera o aumento da vida útil dos produtos, levando a um aumento considerável da produção e a consequente diminuição da retirada de matérias-primas da natureza.', 
                'D) o aumento do consumismo não impacta o meio ambiente, uma vez que, ao realizarmos o descarte de um determinado objeto, o meio ambiente cuida para que este retorne à natureza, reiniciando o ciclo.', 
                'E) ao praticar o consumismo, as pessoas não estão agindo coletivamente, pois não levam em conta o impacto que o consumo exagerado provoca sobre o meio ambiente, bem como suas consequências para o futuro da humanidade.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (649, -- questão 9
                'Se todas essas lâmpadas fossem mantidas acesas durante meia hora, ao longo da apresentação, a energia utilizada por elas seria, em watt-hora,', 
                'A) 600.', 
                'B) 800.', 
                'C) 900.', 
                'D) 1 200.', 
                'E) 1 500.', 
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (650, -- questão 10
                'De acordo com as informações apresentadas, é correto concluir que o teatro grego da Antiguidade', 
                '(A) legitimava o exercício do poder centralizado dos reis absolutistas.', 
                '(B) contribuía para o exercício da cidadania no regime democrático.', 
                '(C) priorizava a abordagem de temas que favoreciam a aristocracia.', 
                '(D) excluía as discussões de temas reais, enfatizando temas mitológicos.', 
                '(E) evitava se utilizar de elementos cômicos para tratar de assuntos sérios.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (651, -- questão 11
                'Pode-se concluir que a doença retratada, no poema Pneumotórax, é conhecida como', 
                '(A) esquistossomose.', 
                '(B) toxoplasmose.', 
                '(C) leishmaniose.', 
                '(D) tuberculose.', 
                '(E) leptospirose.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (652, -- questão 12
                'As expressões que completam corretamente a frase anterior, na ordem em que aparecem, são', 
                'A) repouso ... movimento com velocidade variável.', 
                'B) repouso ... movimento com velocidade constante.', 
                'C) movimento com velocidade variável ... repouso.', 
                'D) movimento com velocidade constante ... repouso.', 
                'E) movimento com velocidade variável ... movimento com velocidade variável.', 
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (653, -- questão 13
                'A sub-região nordestina que é a mais castigada pela seca retratada nesses romances é', 
                'A) o agreste.', 
                'B) o litoral.', 
                'C) o sertão.', 
                'D) o meio norte.', 
                'E) a zona da mata.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (654, -- questão 14
                'A figura de linguagem predominante nesse poema é', 
                'A) hipérbole, pois a palavra estrela foi empregada para suavizar um termo.', 
                'B) pleonasmo, pois a palavra história apresenta o mesmo sentido de incidente.', 
                'C) sinestesia, pois a felicidade da estrela é tratada com indiferença pelo poeta.', 
                'D) catacrese, pois a palavra pena foi empregada inadequadamente, num sentido impróprio.', 
                'E) personificação, pois a lua vivencia uma situação que é própria dos seres humanos.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (655, -- questão 15
                'Comparando as esponjas verdadeiras com o personagem Bob Esponja, é correto afirmar que', 
                'A) ambos possuem corpo quadrado, maciço e resistente.', 
                'B) ambos possuem sistema sensorial desenvolvido, a fim de reagir aos estímulos do meio ambiente.', 
                'C) ambos possuem estruturas locomotoras, que permitem a movimentação para a obtenção de alimento.', 
                'D) as esponjas verdadeiras, ao contrário do Bob Esponja, não possuem boca, pois são animais filtradores.', 
                'E) as esponjas verdadeiras, ao contrário do Bob Esponja, podem viver fora da água.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (656, -- questão 16
                'Se a cada 30 mm da fita de um filme existe um único fotograma, em uma animação de 3 minutos de duração, a fita terá um comprimento aproximado, em metros, de', 
                'A) 70.', 
                'B) 90.', 
                'C) 130.', 
                'D) 150.', 
                'E) 220.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (657, -- questão 17
                'É correto concluir que o discurso do personagem de Chaplin', 
                'A) incentiva jovens soldados para que se alistem nas fileiras do Exército alemão.', 
                'B) evidencia que os Estados Unidos estavam prestes a apoiar os países do Eixo.', 
                'C) critica o modelo político totalitário que vigorava durante a Segunda Guerra.', 
                'D) apoia o imperialismo defendido pela Tríplice Aliança na Primeira Guerra.', 
                'E) defende a democracia, apresentando argumentos do antissemitismo.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (658, -- questão 18
                'Sobre esse rio, é correto afirmar que ele', 
                'A) corta o continente africano de leste a oeste e tem sua nascente no monte Kilimanjaro.', 
                'B) nasce no coração da África Tropical e corre na direção leste, desaguando no oceano Índico.', 
                'C) corta o deserto do Saara no norte africano e corre na direção sul, desaguando no oceano Pacífico.', 
                'D) nasce no centro da África Equatorial e corre na direção oeste, desaguando no oceano Atlântico.', 
                'E) nasce no interior do continente africano e corre na direção norte, desaguando no mar Mediterrâneo.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (659, -- questão 19
                'Pode-se afirmar que esse submarino, ao seguir o fluxo sanguíneo normal da veia citada no texto, será levado diretamente para', 
                'A) o fígado.', 
                'B) o coração.', 
                'C) os pulmões.', 
                'D) a artéria aorta.', 
                'E) o globo ocular.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (660, -- questão 20
                'Nesse momento, considerando as quantidades de filme que os carretéis contêm e o tempo necessário para que o carretel R dê uma volta completa, é correto concluir que o carretel F gira em sentido', 
                'A) anti-horário e dá mais voltas que o carretel R.', 
                'B) anti-horário e dá menos voltas que o carretel R.', 
                'C) horário e dá mais voltas que o carretel R.', 
                'D) horário e dá menos voltas que o carretel R.', 
                'E) horário e dá o mesmo número de voltas que o carretel R.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (661, -- questão 21
                'Assinale a alternativa que apresenta o padrão geométrico cuja repetição compõe a figura 1.', 
                'A) Opção A', 
                'B) Opção B',
                'C) Opção C',
                'D) Opção D',
                'E) Opção E',
                'e',
                2024,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (662, -- questão 22
                'Entre esses materiais, temos', 
                'A) um tubo de ensaio.', 
                'B) um condensador.', 
                'C) uma proveta.', 
                'D) um béquer.', 
                'E) uma pipeta.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (663, -- questão 23
                'Podemos afirmar que o trecho apresentado é, predominantemente,', 
                '(A) descritivo, pois defende uma tese baseada em argumentos expostos pelos moradores do vilarejo.', 
                '(B) descritivo, pois narra fatos históricos ocorridos em uma pequena cidade do interior.', 
                '(C) descritivo, pois representa, por meio de palavras, as características de ambientes e seres.', 
                '(D) narrativo, pois relata um fato fictício, por meio de verbos no pretérito perfeito do indicativo.', 
                '(E) narrativo, pois relata um fato verídico, por meio de verbos no presente do indicativo.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (664, -- questão 24
                'A letra da música Vilarejo apresenta-nos um lugar', 
                'A) inóspito, tedioso, no qual seus habitantes precisam ser heróis para sobreviver.', 
                'B) misterioso, distante e belo onde os autores passaram a maior parte da adolescência.', 
                'C) idealizado e maravilhoso, onde a felicidade e a harmonia são vivenciadas em plenitude.', 
                'D) tranquilo e feliz, embora os estrangeiros vivam em comunidades isoladas.', 
                'E) selvagem e de natureza exuberante que fica na divisa entre a Palestina e Shangri-lá.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (665, -- questão 25
                'Assinale a alternativa que apresenta corretamente o valor semântico, entre parênteses, expresso pela preposição em destaque.', 
                'A) Pra acalmar o coração / Lá o mundo tem razão. (posse)', 
                'B) Portas e janelas ficam sempre abertas / Pra sorte entrar. (finalidade)', 
                'C) Por cima das casas, cal / Frutas em qualquer quintal. (tempo)', 
                'D) Terra de heróis, lares de mãe. (oposição)', 
                'E) Em todas as mesas, pão. (causa)', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (666, -- questão 26
                'Analisando o conteúdo da letra, é correto relacionar a canção de Gonzaguinha ao período', 
                'A) do “milagre econômico”, durante o governo de Castelo Branco.', 
                'B) da instalação do regime militar, durante o governo de Figueiredo.', 
                'C) da abertura do regime militar, durante o governo de Costa e Silva.', 
                'D) da redemocratização do país, durante o governo de Ernesto Geisel.', 
                'E) da vigência do Ato Institucional número 5, durante o governo Médici.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (667, -- questão 27
                'A letra da música, respeitando a licença poética, retrata um fenômeno urbano presente nas grandes cidades que é a', 
                'A) expansão das favelas, pois a intenção do poder público é aumentar esse tipo de moradia, oferecendo infraestrutura adequada nas periferias mais distantes do centro.', 
                'B) falta de moradias, pois as grandes cidades estão saturadas e não possuem imóveis disponíveis, seja para compra, disponibilização, financiamento ou aluguel.', 
                'C) ampliação dos cortiços, pois os vazios urbanos, existentes no centro das cidades, são utilizados pelo poder público para a construção desse tipo de moradia.', 
                'D) violência urbana, pois os governantes deixaram de investir na ampliação do número de policiais, fazendo explodir a criminalidade nas grandes cidades.', 
                'E) especulação imobiliária, pois alguns proprietários acumulam imóveis para utilizá-los futuramente, seja para construir ou para vender.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (668, -- questão 28
                'Podemos afirmar que os termos “comida, diversão e arte”, nesse trecho, exercem sintaticamente a função de', 
                'A) complemento nominal.', 
                'B) sujeito composto.', 
                'C) objeto indireto.', 
                'D) objeto direto.', 
                'E) aposto.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (669, -- questão 29
                'Refletindo sobre a letra da canção de Chico Science, é correto associá-la aos conceitos de', 
                'A) economia planificada e estatização.', 
                'B) luta de classes e globalização.', 
                'C) êxodo rural e imigração.', 
                'D) sedentarismo e colonização.', 
                'E) antropocentrismo e socialização.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (670, -- questão 30
                'A cobertura e as laterais da tenda descrita serão totalmente revestidas por lona. Para que isso ocorra, a quantidade mínima de lona que deverá ser usada é, em metros quadrados, igual a', 
                'A) 138.', 
                'B) 384.', 
                'C) 720.', 
                'D) 1 104.', 
                'E) 1 200.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (671, -- questão 31
                'A quantidade de cabo utilizada para imobilizar as oito estacas, é, em metros,', 
                '(A) 16√2.', 
                '(B) 24√2.', 
                '(C) 32√2.', 
                '(D) 40√2.', 
                '(E) 48√2.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (672, -- questão 32
                'Assim sendo, o raio do globo é, aproximadamente, em metros,', 
                '(A) 5,6.', 
                '(B) 6,3.', 
                '(C) 7,5.', 
                '(D) 8,2.', 
                '(E) 9,8.', 
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (673, -- questão 33
                'De acordo com as informações do texto, é correto afirmar que o Masp', 
                'A) reúne 19 obras pintadas por Chateaubriand.', 
                'B) foi doado pela Rainha Elizabeth II a São Paulo.', 
                'C) está aberto ao público de domingo a domingo.', 
                'D) tem a maior parte do seu acervo dedicada a artistas brasileiros.', 
                'E) passou por obras que modificaram o seu formato original.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (674, -- questão 34
                'Na imagem, temos representada uma molécula de glicose, cuja fórmula molecular é', 
                'A) C₅H₆O₇', 
                'B) C₆H₆O₆', 
                'C) C₆H₁₂O₆', 
                'D) C₁₂H₂₂O₁₁', 
                'E) C₁₂H₂₂O₁₂', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (675, -- questão 35
                'Com base apenas nos dados apresentados nessa tabela, pode-se afirmar corretamente que', 
                'A) a maioria das cidades citadas está situada no continente americano.', 
                'B) as cinco exposições na Ásia, dentre as dez mais populares, tiveram entrada franca.', 
                'C) a exposição mais visitada teve mais que o quádruplo de visitantes que a exposição brasileira menos visitada.', 
                'D) o Brasil aparece em quatro das dez exposições mais populares do ano passado, de acordo com o número diário de visitantes.', 
                'E) a exposição “Impressionismo: Paris e a Modernidade”, no Rio de Janeiro, ficou montada por menos tempo que a exposição “Dalí”, em Paris.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (676, -- questão 36
                'De acordo com o texto, é correto o que se afirma em:', 
                'A) Os restauradores acreditavam que os químicos possuíam sensibilidade para tratar a obra de arte.', 
                'B) De acordo com Humphry, as guerras geraram um forte sentimento de preservação das obras artísticas.', 
                'C) Os químicos eram muito requisitados para restaurações, pois suas intervenções eram sempre perfeitas.', 
                'D) Os monumentos e obras artísticas destruídos pelas guerras mundiais foram um passo importante para a união da arte com a ciência.', 
                'E) De acordo com Poincaré, o cientista estuda a natureza porque ela é muito útil, não porque gosta; estuda-a porque é necessário e não porque ela é bela.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (677, -- questão 37
                'Assim sendo, pode-se concluir que a quantidade de visitantes que pagou meia entrada nesse dia foi de', 
                '(A) 600 pessoas.', 
                '(B) 650 pessoas.', 
                '(C) 700 pessoas.', 
                '(D) 750 pessoas.', 
                '(E) 800 pessoas.', 
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (678, -- questão 38
                'De acordo com a norma-padrão da língua portuguesa, está correta a alternativa:', 
                'A) Naquela região, muitos assinantes preferem o rádio à TV.', 
                'B) À partir das vinte e três horas, ninguém entrava no teatro.', 
                'C) Os funcionários do museu obedeceram os regulamentos.', 
                'D) Lembrou-se que levaria a mãe à Bienal na cidade de São Paulo.', 
                'E) Assistimos à diversos documentários sobre a Primeira Guerra.',
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (679, -- questão 39
                'De acordo com o texto, é correto afirmar que Mendeleev foi', 
                'A) opositor à construção da Tabela Periódica.', 
                'B) introduzido ao mundo das artes pela primeira esposa.', 
                'C) quem descobriu o elemento químico de número atômico 101.', 
                'D) merecidamente reconhecido, graças à sua audácia e ideias ousadas.', 
                'E) o nome dado a um composto químico para homenagear esse grande cientista.', 
                'd',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (680, -- questão 40
                'A diferença entre os radioisótopos mencionados é de', 
                'A) 2 prótons.', 
                'B) 2 elétrons.', 
                'C) 2 nêutrons.', 
                'D) 157 nêutrons.', 
                'E) 159 nêutrons.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (681, -- questão 41
                'Com base nessas informações, é correto afirmar que a intensidade da força exercida por um único homem é, em newtons,', 
                'A) 180.', 
                'B) 240.', 
                'C) 360.', 
                'D) 480.', 
                'E) 500.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (682, -- questão 42
                'Assinale a alternativa que associa corretamente o agente modelador do relevo, o nome da erosão e sua ação.',
                'A) Opção A',
                'B) Opção B',
                'C) Opção C',
                'D) Opção D',
                'E) Opção E',
                'd',
                2024,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (683, -- questão 43
                'Para que o móbile permaneça equilibrado, conforme a figura, a barra maior que sustenta todo o conjunto deve receber um fio que a pendure, atado ao ponto numerado por', 
                'A) 1.', 
                'B) 2.', 
                'C) 3.', 
                'D) 4.', 
                'E) 5.', 
                'c',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (684, -- questão 44
                'Sobre o contexto histórico em que viveu Aleijadinho, é correto afirmar que foi o período', 
                'A) da colonização e do ciclo do ouro.', 
                'B) da colonização e do ciclo do pau-brasil.', 
                'C) do Primeiro Reinado e do ciclo do açúcar.', 
                'D) do Segundo Reinado e do ciclo do café.', 
                'E) da Regência Una e do ciclo da borracha.', 
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (685, -- questão 45
                'Se a escultura apresentada tem uma massa de bronze igual a 300 g, para que essa massa aumente sua temperatura em 2 ºC, deve absorver uma quantidade de calor, em calorias, igual a',
                'A) 6.',
                'B) 18.',
                'C) 27.',
                'D) 36.',
                'E) 54.',
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (686, -- questão 46
                'Entre as principais medidas recomendadas para prevenir essa doença, destaca-se o uso de preservativos, a realização de exames periódicos e a vacinação. Sobre os benefícios relacionados ao uso dessa vacina, é correto afirmar que', 
                'A) acarreta a imunização contra vários tipos de doenças sexualmente transmissíveis, como gonorreia e AIDS.', 
                'B) substitui o uso de pílulas anticoncepcionais e imuniza também contra o HIV, vírus causador da AIDS.', 
                'C) provoca o aumento na taxa de hemácias específicas que garantem a imunização contra o HPV.', 
                'D) possui os anticorpos específicos prontos para atuar no processo de combate ao HPV.', 
                'E) induz a produção de anticorpos específicos na proteção do organismo contra o HPV.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (687, -- questão 47
                'Em um determinado período do século XX, os três países citados fizeram parte', 
                'A) do Mercado Comum Europeu (MCE), bloco que deu origem à atual União Europeia.', 
                'B) da União das Repúblicas Socialistas Soviéticas (URSS), que se desintegrou em 1991.', 
                'C) da Organização do Tratado do Atlântico Norte (OTAN), que existe até os dias de hoje.', 
                'D) do bloco de países capitalistas do leste europeu (CEI), que integravam a antiga Iugoslávia.', 
                'E) do Movimento dos Países Não Alinhados (MNA), que propunha uma terceira via econômica.', 
                'b',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (688, -- questão 48
                'É correto afirmar que, no período histórico em que Baderna chegou ao Brasil, o governo enfrentava', 
                'A) a Revolução Praieira.', 
                'B) a Guerra de Canudos.', 
                'C) a Revolta da Vacina.', 
                'D) a Inconfidência Mineira.', 
                'E) o Quilombo dos Palmares.', 
                'a',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (689, -- questão 49
                'Sobre o ser vivo apresentado na tirinha, é correto afirmar que', 
                'A) é pluricelular e microscópico.', 
                'B) realiza a reprodução por meio do processo de fagocitose.', 
                'C) apresenta tecidos especializados à obtenção de alimento.', 
                'D) é autótrofo, pois se alimenta de fungos, bactérias e de outros microrganismos.', 
                'E) forma pseudópodes ou falsos-pés, relacionados à movimentação e à obtenção de alimento.', 
                'e',
                2015,
                1
                );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
        VALUES (690, -- questão 50
            'Na cena criada por Quino, está presente a intertextualidade, pois',
            'A) o humor surge em consequência da falta de dedicação e de empenho da faxineira no momento de realizar as tarefas da casa.',
            'B) a dona da casa é uma pessoa que aprecia pintura e possui várias obras de artistas cubistas em sua residência.',
            'C) as alterações realizadas pela faxineira na pintura de Picasso mantiveram a ideia original proposta pelo pintor para Guernica.',
            'D) o cartunista reproduz a famosa pintura de Picasso, inserindo-a em um novo contexto que é a sala em desordem de uma residência.',
            'E) a faxineira irrita-se com a sujeira deixada pelos adolescentes da casa os quais frequentemente realizam festas para os amigos.',
            'd',
            2015,
            1
        );

-- INSERT TABLE tbIMAGENS PROVA 2015 1 SEMESTRE
    INSERT INTO tbImagens (cod_image, cod_question, image_data)
        VALUES
            ('', 641, 'imgs/apresentacao.PNG'),
            ('', 641, 'imgs/txtQ1.PNG'),
            ('', 642, 'imgs/txtQ2.PNG'),
            ('', 643, 'imgs/txtQ3.PNG'),
            ('', 644, 'imgs/txtQ4-5.PNG'),
            ('', 646, 'imgs/txtQ6.PNG'),
            ('', 647, 'imgs/txtQ7.PNG'),
            ('', 648, 'imgs/txtQ8.PNG'),
            ('', 649, 'imgs/txtQ9.PNG'),
            ('', 649, 'imgs/txtQ9-1.PNG'),
            ('', 650, 'imgs/txtQ10.PNG'),
            ('', 651, 'imgs/txtQ11.PNG'),
            ('', 651, 'imgs/txtQ11-1.PNG'),
            ('', 652, 'imgs/txtQ12.PNG'),
            ('', 652, 'imgs/txtQ12-1.PNG'),
            ('', 652, 'imgs/txtQ12-2.PNG'),
            ('', 653, 'imgs/txtQ13.PNG'),
            ('', 654, 'imgs/txtQ14.PNG'),
            ('', 655, 'imgs/txtQ15.PNG'),
            ('', 656, 'imgs/txtQ16.PNG'),
            ('', 656, 'imgs/txtQ16-1.PNG'),
            ('', 657, 'imgs/txtQ17.PNG'),
            ('', 658, 'imgs/txtQ18.PNG'),
            ('', 659, 'imgs/txtQ19.PNG'),
            ('', 659, 'imgs/txtQ19-1.PNG'),
            ('', 660, 'imgs/txtQ20.PNG'),
            ('', 661, 'imgs/txtQ21.PNG'),
            ('', 661, 'imgs/txtQ21-1.PNG'),
            ('', 662, 'imgs/txtQ22.PNG'),
            ('', 663, 'imgs/txtQ23-25.PNG'),
            ('', 663, 'imgs/txtQ23-25-1.PNG'),
            ('', 666, 'imgs/txtQ26.PNG'),
            ('', 667, 'imgs/txtQ27.PNG'),
            ('', 668, 'imgs/txtQ28.PNG'),
            ('', 669, 'imgs/txtQ29.PNG'),
            ('', 670, 'imgs/txtQ30-31.PNG'),
            ('', 671, 'imgs/txtQ31.PNG'),
            ('', 672, 'imgs/txtQ32.PNG'),
            ('', 673, 'imgs/txtQ33.PNG'),
            ('', 674, 'imgs/txtQ34.PNG'),
            ('', 674, 'imgs/txtQ34-1.PNG'),
            ('', 675, 'imgs/txtQ35.PNG'),
            ('', 676, 'imgs/txtQ36.PNG'),
            ('', 677, 'imgs/txtQ37.PNG'),
            ('', 679, 'imgs/txtQ39-40.PNG'),
            ('', 680, 'imgs/txtQ40.PNG'),
            ('', 681, 'imgs/txtQ41.PNG'),
            ('', 681, 'imgs/txtQ41-1.PNG'),
            ('', 682, 'imgs/txtQ42.PNG'),
            ('', 683, 'imgs/txtQ43.PNG'),
            ('', 684, 'imgs/txtQ44.PNG'),
            ('', 685, 'imgs/txtQ45.PNG'),
            ('', 685, 'imgs/txtQ45-1.PNG'),
            ('', 686, 'imgs/txtQ46.PNG'),
            ('', 687, 'imgs/txtQ47.PNG'),
            ('', 687, 'imgs/txtQ47-1.PNG'),
            ('', 688, 'imgs/txtQ48.PNG'),
            ('', 689, 'imgs/txtQ49.PNG'),
            ('', 690, 'imgs/txtQ50.PNG'),
            ('', 690, 'imgs/txtQ50-1.PNG');

-- INSERT TABLE tbQUESTIONS PROVA 2015 2 SEMESTRE
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 1
        691,
        'De acordo com as características dessa crônica, é correto afirmar que se trata de um texto',
        'A) narrativo, pois conta um fato por meio das linguagens verbal e não verbal.',
        'B) narrativo, pois conta, em primeira pessoa, um fato que pode ser verídico ou fictício.',
        'C) narrativo, pois conta, em terceira pessoa, um fato que pode ser verídico ou fictício.',
        'D) descritivo, pois o autor argumenta a favor da eficiência do transporte aéreo.',
        'E) descritivo, pois o autor explora as características físicas das personagens.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 2
        692,
        'Segundo o texto, é correto afirmar que o narrador descreve “a estranha passageira” como uma mulher',
        'A) silenciosa, indiscreta e mal-humorada.',
        'B) discreta, elegante e mal-humorada.',
        'C) educada, tímida e impaciente.',
        'D) introvertida, agressiva e distraída.',
        'E) extrovertida, indelicada e indiscreta.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 3
        693,
        'Considerando o texto, é correto dizer que “a estranha passageira”',
        'A) exigiu que as aeromoças esclarecessem algumas dúvidas.',
        'B) omitiu do narrador o fato de nunca ter viajado de avião.',
        'C) era uma cliente assídua daquela companhia aérea.',
        'D) impossibilitou que o narrador desfrutasse do prazer da leitura.',
        'E) notou que alguns passageiros dispunham de assentos privilegiados.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 4
        694,
        'As formas verbais em destaque foram empregadas no modo indicativo e a respeito delas é correto afirmar que',
        'A) esquentara está no pretérito mais-que-perfeito e expressa incerteza sobre os fatos.',
        'B) esquentara está no pretérito imperfeito e expressa convicção sobre fatos futuros.',
        'C) percebi está no pretérito perfeito e expressa ação concluída no passado.',
        'D) apertava está no pretérito perfeito e expressa ação habitual e repetitiva.',
        'E) percebi está no pretérito imp',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 5
        695,
        'Assinale a alternativa em que o verbo e o pronome, entre parênteses, substituem corretamente as expressões em destaque.',
        'A) O narrador transmitia calma e segurança à passageira. (transmitia-as)',
        'B) Ele não pôde ler o romance recém-adquirido. (ler-lhes)',
        'C) Antes da decolagem, os viajantes abriam jornais e revistas para se distrair. (abriam-os)',
        'D) Os outros passageiros fingiram ignorar os equívocos daquela senhora. (ignorar-lhes)',
        'E) A passageira arregalou os olhos ao descobrir a utilidade dos saquinhos. (arregalou-os)',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 6
        696,
        'Esses trechos apresentam, respectivamente, os discursos',
        'A) direto, direto e direto.',
        'B) direto, direto e indireto.',
        'C) direto, indireto e direto.',
        'D) indireto, direto e indireto.',
        'E) indireto, direto e direto.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 7
        697,
        'Uma doença infecciosa que pode ser prevenida com o extermínio de mosquitos transmissores é',
        'A) a catapora.',
        'B) a caxumba.',
        'C) a malária.',
        'D) a meningite.',
        'E) o sarampo.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 8
        698,
        'De acordo com a distribuição da malha rodoviária federal pavimentada, pode-se afirmar corretamente que,',
        'A) em 2004, a região Sul contava com 22,2% da extensão dessa malha.',
        'B) em 2014, a extensão dessa malha na região Centro-Oeste era de 8 235 km.',
        'C) no período de 2004 a 2014, no Brasil, essa malha teve um crescimento de 19,7%.',
        'D) em 2004 e em 2014, a região Sudeste, apresenta a maior participação na extensão dessa malha.',
        'E) no período de 2004–2014, a região Norte, apesar da menor extensão, apresentou o maior crescimento dessa malha.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 9
        699,
        'Esse processo causa grandes transtornos à agricultura e à pecuária. A respeito das formigas cortadeiras, é correto afirmar que',
        'A) comem as plantas que cortam.',
        'B) possuem quatro pares de patas locomotoras.',
        'C) produzem seu próprio alimento por serem autótrofas.',
        'D) apresentam o corpo dividido em cabeça, tórax e abdome.',
        'E) realizam parasitismo quando interagem com os fungos do formigueiro.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 10
        700,
        'Nessas condições, a componente vertical da tração a que cada ponto de fixação das alças é submetido será, em newtons,',
        'A) 120.',
        'B) 150.',
        'C) 1 200.',
        'D) 1 500.',
        'E) 3 000.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 11
        701,
        'Entre os produtos que são transportados por minerodutos estão',
        'A) gás natural e gás liquefeito de petróleo.',
        'B) sal-gema e concentrado fosfático.',
        'C) óleo combustível e álcool.',
        'D) gasolina e biodiesel.',
        'E) querosene e nafta.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 12
        702,
        'Sobre o texto é correto afirmar que',
        'A) a oxiemoglobina se forma quando o sangue passa pelos capilares sanguíneos de todos os tecidos do corpo humano.',
        'B) a proteína hemoglobina encontra-se no interior dos glóbulos vermelhos e é responsável pela coagulação do sangue.',
        'C) o gás carbônico reage com substâncias orgânicas que se encontram no interior das células, a fim de liberar energia necessária aos processos vitais.',
        'D) as hemácias possuem a proteína hemoglobina, a qual se combina com o gás oxigênio do ar que chega aos alvéolos pulmonares.',
        'E) os glóbulos brancos e as substâncias orgânicas desempenham importante função no transporte dos gases respiratórios.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 13
        703,
        'Sobre o processo de respiração celular mencionado no texto, pode-se afirmar corretamente que as organelas citoplasmáticas, responsáveis pela oxidação das substâncias orgânicas, recebem o nome de',
        'A) lisossomos.',
        'B) mitocôndrias.',
        'C) ribossomos.',
        'D) centríolos.',
        'E) vacúolos.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 14
        704,
        'O gás transportado pela hemoglobina dos tecidos para o pulmão é o',
        'A) CO, denominado óxido de carbono.',
        'B) CO, denominado monóxido de carbono.',
        'C) CO₂, denominado dióxido de carbono.',
        'D) CO₂, denominado monóxido de carbono.',
        'E) CO₂, denominado trióxido de carbono.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 15
        705,
        'Assim sendo, o volume de areia, em metros cúbicos, é',
        'A) 9,44.',
        'B) 9,82.',
        'C) 10,24.',
        'D) 10,56.',
        'E) 10,78.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 16
        706,
        'Considere que uma encomenda de 2 metros cúbicos de areia fina foi orçada em R$ 450,00. Nessas condições, a distância entre o ponto de distribuição de areia e o local da entrega é, em quilômetros,',
        'A) 15.',
        'B) 30.',
        'C) 45.',
        'D) 60.',
        'E) 75.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 17
        707,
        'De acordo com o texto, é correto afirmar que',
        'A) a ocorrência de acidentes no Brasil é muito rara porque foi adotada uma legislação específica e rigorosa.',
        'B) o Brasil adotou uma legislação moderada em relação ao transporte de produtos químicos por via rodoviária.',
        'C) os rótulos de risco trazem os números ONU na linha superior, que identificam o produto de acordo com a listagem de produtos perigosos.',
        'D) a CETESB mantém um serviço de informações via telefone para auxiliar nas ocorrências envolvendo substâncias químicas nas estradas brasileiras.',
        'E) a ONU legisla sobre o transporte de produtos perigosos por meio de um comitê que relaciona os produtos perigosos à números, denominados número ONU.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 18
        708,
        'Pela análise do texto e dos painéis de segurança representados no caminhão, conclui-se corretamente que os números ONU',
        'A) 30 e 33 significam que o veículo transporta um único produto químico.',
        'B) 30 e 33 significam que o veículo transporta produtos químicos diferentes.',
        'C) 30 e 1993 significam que o veículo transporta produtos químicos diferentes.',
        'D) 1993 e 1999 significam que o veículo transporta um único produto químico.',
        'E) 1993 e 1999 significam que o veículo transporta produtos químicos diferentes.',
        'E',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 19
        709,
        'Completado o plano de voo, a aeronave estará sobre o estado',
        'A) da Bahia.',
        'B) de São Paulo.',
        'C) de Tocantins.',
        'D) de Minas Gerais.',
        'E) do Rio Grande do Sul.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 20
        710,
        'A água desse rio, na região do acidente, apresentou-se',
        'A) neutra, pela ionização do ácido na água.',
        'B) ácida, pela ionização do ácido na água.',
        'C) ácida, pela neutralização da água.',
        'D) básica, pela neutralização da água.',
        'E) básica, pela dissociação da base na água.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 21
        711,
        'Assinale a alternativa correta sobre o processo descrito no texto.',
        'A) O transporte de pólen entre os vegetais da caatinga depende exclusivamente de morcegos.',
        'B) Os morcegos da caatinga são aves noturnas que se alimentam do sangue de animais dessa região.',
        'C) As características das flores da caatinga não possuem relação com a polinização realizada pelos morcegos.',
        'D) Os grãos de pólen transportados pelos morcegos entre plantas de espécies diferentes caracterizam a autopolinização.',
        'E) A polinização cruzada ocorre entre uma planta e outra da mesma espécie, aumentando a variabilidade genética nos descendentes.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 22
        712,
        'Nesse processo de eletrização, os grãos e a esteira ficam carregados com cargas elétricas de sinais',
        'A) iguais, eletrizados por atrito.',
        'B) iguais, eletrizados por contato.',
        'C) opostos, eletrizados por atrito.',
        'D) opostos, eletrizados por contato.',
        'E) opostos, eletrizados por indução.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 23
        713,
        'Sobre essas plantas é correto afirmar que',
        'A) possuem raízes desenvolvidas, flores e frutos.',
        'B) são visíveis apenas com o auxílio de microscópio.',
        'C) desenvolvem estruturas especiais para a produção das sementes.',
        'D) têm pequeno porte e se caracterizam pela ausência de vasos condutores de seiva.',
        'E) parasitam outras plantas das quais retiram os nutrientes necessários para sua sobrevivência.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 24
        714,
        'É correto afirmar que, durante a subida da cápsula da câmara até a superfície, a velocidade média da Fênix 2 foi, aproximadamente,',
        'A) 0,7 km/h.',
        'B) 2,6 km/h.',
        'C) 3,4 km/h.',
        'D) 3,6 km/h.',
        'E) 4,4 km/h.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 25
        715,
        'Essa corrente é um dos fatores responsáveis',
        'A) pelo fenômeno das monções, na Ásia.',
        'B) pelo aquecimento da costa da Noruega, na Europa.',
        'C) pela existência do deserto do Atacama, na América do Sul.',
        'D) pela exuberância da flora na ilha de Madagascar, na África.',
        'E) pela imensa quantidade de chuvas no arquipélago do Havaí, na Oceania.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 26
        716,
        'Sobre essas embarcações, é correto afirmar que seu uso foi predominante no período',
        'A) contemporâneo, nas migrações dos chamados povos bárbaros.',
        'B) medieval, com a expansão do Império de Alexandre, o Grande.',
        'C) moderno, nas expedições portuguesas e espanholas.',
        'D) da Segunda Revolução Industrial, no século XX.',
        'E) da expansão do Império Romano, no século II.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 27
        717,
        'O Canal do Panamá permite a interligação entre os oceanos',
        'A) Glacial Ártico e Índico.',
        'B) Atlântico e Pacífico.',
        'C) Índico e Pacífico.',
        'D) Índico e Atlântico.',
        'E) Pacífico e Glacial Ártico.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 28
        718,
        'Considere que entraram 100 kg da água do lago no aqueduto. Após essa massa de água ter percorrido o aqueduto, a energia cinética com que ela chegou ao reservatório foi, em joules, de',
        'A) 100.',
        'B) 200.',
        'C) 1 000.',
        'D) 2 000.',
        'E) 20 000.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 29
        719,
        'Esse deslocamento cotidiano é conhecido como migração',
        'A) sazonal.',
        'B) pendular.',
        'C) permanente.',
        'D) inter-regional.',
        'E) de transumância.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 30
        720,
        'Na cadeia alimentar descrita no texto, o peixe-leão comporta-se como',
        'A) produtor.',
        'B) decompositor.',
        'C) consumidor primário.',
        'D) consumidor secundário.',
        'E) consumidor primário e secundário.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 31
        721,
        'A expressão que completa de modo correto essa afirmação é',
        'A) maior volume.',
        'B) maior densidade.',
        'C) maior temperatura.',
        'D) menor calor específico.',
        'E) menor capacidade térmica.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 32
        722,
        'De acordo com os dados da tabela, sobre o transporte de africanos para o Brasil, é correto concluir que',
        'A) mais de 2 milhões de africanos embarcaram entre 1601 e 1800.',
        'B) a Amazônia não recebeu africanos escravizados no século XVIII.',
        'C) Bahia e Pernambuco eram o destino da maior parte dessas pessoas.',
        'D) o maior número de africanos destinados ao Sudeste embarcou no século XIX.',
        'E) a região Sudeste sempre foi o destino da maior parte das pessoas que embarcaram.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 33
        723,
        'Assinale a alternativa que corresponde corretamente aos agentes e ao movimento referido.',
        'A) Cavaleiros transportando mercadorias do Pantanal.',
        'B) Bandeirantes à procura de índios, ouro e pedras preciosas.',
        'C) Tropeiros, com mulas, cavalos e bois, transportando mercadorias.',
        'D) Viajantes em cavalos e mulas, para transportar ouro e pedras preciosas.',
        'E) Navegantes em pequenas embarcações, para explorar a costa do sul do Brasil.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 34
        724,
        'A análise da figura nos permite concluir corretamente que, nessa sequência,',
        'A) ocorre a troca de íons positivos por íons negativos na célula.',
        'B) para cada dois ânions que entram na célula, três cátions saem.',
        'C) o número de íons positivos que entram e saem da célula é igual.',
        'D) os íons de sódio entram na célula, enquanto os íons de potássio saem.',
        'E) a cada três íons de sódio que saem da célula, dois íons de potássio entram.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 35
        725,
        'O texto nos permite concluir corretamente que',
        'A) o citoplasma controla as concentrações dos íons, capturando íons sódio e bombeando-os para fora da célula.',
        'B) o transporte ativo permite fluxo de substâncias e íons do meio mais concentrado para o menos concentrado.',
        'C) a alta concentração de sódio dentro da célula é importante para a síntese proteica e para a respiração.',
        'D) o equilíbrio osmótico é mantido pelo bombeamento de íons de sódio do meio intracelular.',
        'E) a concentração de potássio é maior no meio extracelular do que no meio intracelular.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 36
        726,
        'Os íons, presentes no transporte ativo, formam com íons de cloro (cloreto) os compostos iônicos cloreto de sódio e cloreto de potássio, cujas fórmulas são, respectivamente:',
        'A) NaCl e KCl.',
        'B) NaCl₂ e KCl₂.',
        'C) Na₂Cl e K₂Cl.',
        'D) NaCl e K₂Cl.',
        'E) Na₂Cl e KCl.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 37
        727,
        'Nas condições apresentadas, cada ônibus equivale',
        'A) à retirada de 72 carros das ruas, pois transporta 72 passageiros.',
        'B) à retirada de 90 bicicletas das ruas, pois transporta 72 passageiros.',
        'C) a 54 carros em termos de área urbana ocupada.',
        'D) a 24 bicicletas em termos de área urbana ocupada.',
        'E) a 216 bicicletas em termos de área urbana ocupada.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 38
        728,
        'O acúmulo desses sedimentos nos rios e lagos constitui o processo denominado',
        'A) assoreamento.',
        'B) epirogênese.',
        'C) vulcanismo.',
        'D) tectonismo.',
        'E) orogênese.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 39
        729,
        'Assinale a alternativa que corresponde corretamente às informações e ao país citados no texto.',
        'A) Os Emirados Árabes, grandes exportadores de petróleo, têm o principal aeroporto internacional do mundo.',
        'B) Dubai é um país da Liga Árabe que está procurando se impor religiosamente aos demais da sua região.',
        'C) Os Emirados Árabes têm o segundo maior aeroporto internacional do mundo, depois da Inglaterra.',
        'D) Os Emirados Árabes, aliados de Irã e Iraque, estão sob intervenção militar dos Estados Unidos.',
        'E) Dubai é uma cidade da Arábia Saudita, foco de graves conflitos religiosos e econômicos.',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 40
        730,
        'De acordo com as informações relativas ao esquema, o número máximo de estais que estão fixados do ponto A ao ponto B e que têm a outra extremidade na semirreta BC é',
        'A) 7.',
        'B) 9.',
        'C) 11.',
        'D) 13.',
        'E) 15.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 41
        731,
        'A distância entre os pontos E e C é, em metros,',
        'A) 6.',
        'B) 8.',
        'C) 10.',
        'D) 12.',
        'E) 14.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 42
        732,
        'Sabendo que Guarulhos segue o horário de Brasília (GMT –3, ou seja, menos três horas em relação ao meridiano central Greenwich), quando Carlos Frederico desembarcou em Londres, os relógios dessa cidade marcavam',
        'A) 6 horas.',
        'B) 9 horas.',
        'C) 11 horas.',
        'D) 17 horas.',
        'E) 20 horas.',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 43
        733,
        'A figura de linguagem predominante nesse trecho da letra da música é',
        'A) eufemismo, pois o eu lírico se revolta contra a tristeza e a dor da separação.',
        'B) catacrese, pois a palavra trem foi empregada em sentido próprio para designar meio de transporte.',
        'C) hipérbole, pois faz referência aos inúmeros trens que chegam e que partem da estação.',
        'D) antítese, pois há referência aos encontros e às despedidas, situações opostas que fazem parte da vida.',
        'E) anáfora, pois o compositor evita repetir vocábulos a fim de dar mais fluidez e lirismo aos versos.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 44
        734,
        'A prosperidade e desenvolvimento da Europa nesse período podem ser atribuídos, principalmente,',
        'A) às guerras e conflitos com países americanos.',
        'B) à disputa por hegemonia com os Estados Unidos.',
        'C) às excelentes condições de trabalho nas fábricas.',
        'D) aos empréstimos obtidos de países como o Japão.',
        'E) à corrida imperialista, explorando recursos de colônias.',
        'E',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 45
        735,
        'Admitindo-se que não haja atrito entre as laterais da caixa de creme dental, em que se desenhou o vagão, e a caixa de papelão, para se obter o efeito de levitação e ainda um pequeno movimento horizontal do vagão sempre para a esquerda, em relação à figura desenhada, a disposição dos ímãs permanentes, no interior da caixa de papelão, deve ser a que se encontra representada em:',
        'A) Opção A',
        'B) Opção B',
        'C) Opção C',
        'D) Opção D',
        'E) Opção E',
        'A',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 46
        736,
        'Nessas condições, o ângulo de inclinação desse trecho da rua Baldwin é mais próximo de',
        'A) 12°',
        'B) 15°',
        'C) 19°',
        'D) 21°',
        'E) 24°',
        'B',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 47
        737,
        'De acordo com o texto, o serviço de transporte de passageiros nos trens de longo percurso modificou-se, entre as décadas de 1970 e 1990, em consequência da',
        'A) ausência de iniciativas que beneficiassem o setor ferroviário.',
        'B) concorrência com o setor aeroviário iniciada em 1945.',
        'C) expansão dos serviços de transporte hidroviários.',
        'D) criação de novas linhas e serviços ferroviários.',
        'E) falta de incentivos à indústria automobilística.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 48
        738,
        'A função de linguagem predominante nesse texto é',
        'A) fática, pois a mensagem está centrada no canal, objetivando prolongar o contato.',
        'B) metalinguística, pois influencia o interlocutor, de forma apelativa, indutiva.',
        'C) referencial, pois transmite uma informação objetiva, expõe dados da realidade.',
        'D) conativa, pois a mensagem busca influenciar o receptor, de forma apelativa.',
        'E) poética, pois a mensagem está centrada na elaboração da linguagem.',
        'C',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 49
        739,
        'Considerando a letra da música, conclui-se corretamente que o jongo',
        'A) não é acompanhado por instrumentos musicais.',
        'B) não se difundiu para além da região de Angola.',
        'C) era um castigo imposto a africanos rebeldes.',
        'D) é de origem angolana e era cantado à noite.',
        'E) é uma forma de luta semelhante à capoeira.',
        'D',
        2015,
        2
    );
    INSERT INTO tbQuestions(cod_question, text_question, option_a, option_b, option_c, option_d, option_e, correct_option, exam_year, semestre) 
    VALUES ( -- questão 50
        740,
        'Considerando a charge e as consequências e transtornos que os grandes congestionamentos causam, é correto concluir que',
        'A) a irritação pela qual passam os motoristas nos congestionamentos nas grandes cidades pode ser resolvida pelo uso do telefone celular durante o ato de dirigir, pois isso diminui o risco de acidentes.',
        'B) o problema dos congestionamentos das grandes cidades se resolve com a desapropriação de áreas públicas para a expansão da malha viária e o estreitamento das ruas e avenidas.',
        'C) o uso do automóvel permitiu a contração do perímetro urbano das grandes cidades, em função da construção de grandes avenidas, viadutos e anéis viários em seu entorno.',
        'D) os círculos publicitários abrem nas grandes cidades empresas especializadas na fabricação de veículos, explorando o status que o automóvel naturalmente oferece.',
        'E) o aumento da frota de automóveis em circulação nas grandes cidades gera acréscimo nas despesas governamentais com a saúde pública.',
        'E',
        2015,
        2
    );

-- INSERT TABLE tbIMAGENS PROVA 2015 2 SEMESTRE
    INSERT INTO tbImagens (cod_image, cod_question, image_data)
        VALUES
            ('', 691, 'imgs2/apresentacao.PNG'),
            ('', 691, 'imgs2/txtQ1-6.PNG'),
            ('', 696, 'imgs2/txtQ6.PNG'),
            ('', 697, 'imgs2/txtQ7.PNG'),
            ('', 698, 'imgs2/txtQ8.PNG'),
            ('', 699, 'imgs2/txtQ9.PNG'),
            ('', 699, 'imgs2/txtQ9-1.PNG'),
            ('', 700, 'imgs2/txtQ10.PNG'),
            ('', 700, 'imgs2/txtQ10-1.PNG'),
            ('', 701, 'imgs2/txtQ11.PNG'),
            ('', 701, 'imgs2/txtQ11-1.PNG'),
            ('', 702, 'imgs2/txtQ12-14.PNG'),
            ('', 705, 'imgs2/txtQ15.PNG'),
            ('', 706, 'imgs2/txtQ16.PNG'),
            ('', 707, 'imgs2/txtQ17-18.PNG'),
            ('', 709, 'imgs2/txtQ19.PNG'),
            ('', 710, 'imgs2/txtQ20.PNG'),
            ('', 711, 'imgs2/txtQ21.PNG'),
            ('', 712, 'imgs2/txtQ22.PNG'),
            ('', 712, 'imgs2/txtQ22-1.PNG'),
            ('', 713, 'imgs2/txtQ23.PNG'),
            ('', 714, 'imgs2/txtQ24.PNG'),
            ('', 715, 'imgs2/txtQ25.PNG'),
            ('', 716, 'imgs2/txtQ26.PNG'),
            ('', 716, 'imgs2/txtQ26-1.PNG'),
            ('', 717, 'imgs2/txtQ27.PNG'),
            ('', 718, 'imgs2/txtQ28.PNG'),
            ('', 718, 'imgs2/txtQ28-1.PNG'),
            ('', 719, 'imgs2/txtQ29.PNG'),
            ('', 720, 'imgs2/txtQ30.PNG'),
            ('', 721, 'imgs2/txtQ31.PNG'),
            ('', 722, 'imgs2/txtQ32.PNG'),
            ('', 723, 'imgs2/txtQ33.PNG'),
            ('', 724, 'imgs2/txtQ34-36.PNG'),
            ('', 724, 'imgs2/txtQ34-36-1.PNG'),
            ('', 724, 'imgs2/txtQ34-36-2.PNG'),
            ('', 727, 'imgs2/txtQ37.PNG'),
            ('', 728, 'imgs2/txtQ38.PNG'),
            ('', 729, 'imgs2/txtQ39.PNG'),
            ('', 730, 'imgs2/txtQ40-41.PNG'),
            ('', 732, 'imgs2/txtQ42.PNG'),
            ('', 732, 'imgs2/txtQ42-1.PNG'),
            ('', 733, 'imgs2/txtQ43.PNG'),
            ('', 733, 'imgs2/txtQ43-1.PNG'),
            ('', 734, 'imgs2/txtQ44.PNG'),
            ('', 735, 'imgs2/txtQ45.PNG'),
            ('', 735, 'imgs2/txtQ45-1.PNG'),
            ('', 736, 'imgs2/txtQ46.PNG'),
            ('', 737, 'imgs2/txtQ47.PNG'),
            ('', 738, 'imgs2/txtQ48.PNG'),
            ('', 739, 'imgs2/txtQ49.PNG'),
            ('', 740, 'imgs2/txtQ50.PNG');






--Novo