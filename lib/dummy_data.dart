import 'package:decipher/model/major.dart';
import 'package:decipher/model/news_item.dart';
import 'package:decipher/model/question.dart';

import 'model/career.dart';

enum CareerType { visualComm, adsAndMedia, creativeMultimedia }



Map<CareerType, List<Career>> careers =
  {
    CareerType.visualComm: const [
      Career(
        title: "Graphic Designer",
        assetPath: "assets/images/career_path_img1.png",
      ),
      Career(
        title: "Web Designer",
        assetPath: "assets/images/career_path_img2.png",
        overview: '''
  A web designer is a professional responsible for creating visually appealing and functional websites. They combine their design skills with technical knowledge to develop user-friendly websites that meet the client's requirements. Web designer’s focus on the overall look and feel of a website, including layout, color schemes, typography, and graphics.
They possess a strong understanding of programming languages, design principles, and user experience (UX) concepts. Web designers are skilled in HTML, CSS, and JavaScript, the core programming languages used in web design. They also have knowledge of graphic design and image editing tools like Adobe Photoshop and Illustrator to create visually appealing layouts and graphics.
 Additionally, web designers focus on responsive design to ensure websites adapt to different screen sizes and devices. Understanding user experience (UX) design is crucial for optimizing websites for usability and enhancing user satisfaction. Familiarity with content management systems (CMS) and search engine optimization (SEO) principles is also advantageous. Collaboration and communication skills are essential as web designers often work in teams
''',
        skills: ''' 
  HTML/CSS: Proficiency in HTML (Hypertext Markup Language) and CSS (Cascading Style Sheets) is essential for web designers. They use these languages to structure and style web pages, ensuring proper layout and formatting.

Responsive Design: With the increasing use of mobile devices, web designers need to create websites that are responsive and adapt to different screen sizes. They should be proficient in designing websites that are mobile-friendly and provide a seamless user experience across various devices.
 
User Experience (UX) Design: Web designers should understand the principles of UX design to create websites that are intuitive and user-friendly. They focus on optimizing the user journey, ensuring easy navigation, and enhancing the overall usability of the website.

Prototyping and Wireframing: Web designers use prototyping and wireframing tools such as Sketch, Figma, or Adobe XD to create interactive mockups of websites. These tools help them visualize the website's structure, layout, and functionality before the development stage.

SEO Principles: Understanding Search Engine Optimization (SEO) principles is crucial for web designers. They need to create websites that are search engine-friendly, optimize page load times, and ensure proper tagging and metadata implementation.
''',
        tools: '''Adobe Creative Suite (Photoshop, Illustrator, XD)
Sketch
Figma
InVision
Canva
HTML/CSS text editors (Sublime Text, Visual Studio Code)
Content Management Systems (WordPress, Drupal, Joomla)
Prototyping tools (Axure RP, Balsamiq, and Protopie.io)
Version control systems (Git, GitHub)
Browser developer tools (Chrome DevTools, Firefox Developer Tools)''',
        
      ),
      Career(
        title: "Illustrator",
        assetPath: "assets/images/career_path_img3.png",
        overview:
            "An illustrator designer is a creative professional who specializes in creating visual artwork and illustrations for various mediums and purposes. They possess a unique blend of artistic skills, creativity, and technical expertise to bring ideas to life through visual storytelling. Illustrator designers often work in fields such as publishing, advertising, animation, digital media, or graphic design.\n\nIllustrator designers have a strong foundation in drawing and illustration techniques. They possess a keen eye for detail, composition, and color theory, allowing them to create visually captivating and engaging illustrations. Whether it's creating characters, landscapes, icons, or infographics, illustrator designers have the ability to convey messages, evoke emotions, and enhance the overall visual experience.\n\nIn addition to their artistic abilities, illustrator designers possess technical skills such as file management, knowledge of color modes, image resolution, and print or digital production processes. They understand the practical aspects of preparing their artwork for different mediums, ensuring it is suitable for reproduction and meets industry standards.",
        skills:
            "Drawing and Illustration Skills: Illustrator designers have strong drawing and illustration skills, including a solid understanding of anatomy, composition, perspective, and shading. They can create visually appealing and expressive illustrations using traditional and digital mediums.\n\nCreativity and Imagination: Illustrator designers possess a high level of creativity and imagination, allowing them to generate unique and original visual concepts. They have the ability to think outside the box and bring innovative ideas to their illustrations.\n\nVisual Storytelling: Illustrator designers excel in visual storytelling, using their illustrations to convey narratives, evoke emotions, or communicate messages effectively. They have a knack for capturing the essence of a story or idea through their artwork.\n\nDigital Illustration Software: Illustrator designers are proficient in using digital illustration software such as Adobe Illustrator, CorelDRAW, or Procreate. They have a strong command of these tools, allowing them to create, edit, and manipulate digital artwork with precision and creativity.\n\nKnowledge of Design Principles: Illustrator designers have a solid understanding of design principles such as color theory, composition, balance, and typography. They know how to apply these principles effectively to create visually appealing and harmonious illustrations.\n\nAdaptability and Versatility: Illustrator designers can adapt their artistic style and approach to suit different projects, clients, or industries. They are versatile in their ability to work with various art styles, themes, and mediums as required.\n\nCommunication and Collaboration: Illustrator designers collaborate closely with clients, art directors, or creative teams. Effective communication skills are crucial for understanding project requirements, incorporating feedback, and ensuring the final illustrations meet client expectations.\n\nAttention to Detail: Illustrator designers have a keen eye for detail, ensuring precision in their illustrations. They pay attention to elements such as line quality, textures, color accuracy, and overall visual consistency.",
        tools:
            "Drawing Materials: Traditional drawing materials such as pencils, pens, markers, ink, and brushes are often used by illustrator designers for sketching, inking, and adding traditional elements to their artwork.\n\nDigital Illustration Software: Illustrator designers heavily rely on digital illustration software to create, edit, and manipulate their artwork. Adobe Illustrator is a popular choice, offering a wide range of tools and features specifically designed for vector-based illustrations. Other software options include CorelDRAW, Procreate, or Affinity Designer.\n\nGraphic Tablets and Pen Displays: Graphic tablets and pen displays are essential tools for illustrator designers working digitally. These devices allow for precise control and mimic the experience of drawing directly on paper, making it easier to create digital illustrations.\n\nScanners: Scanners are used to convert traditional artwork into digital format. Illustrator designers often scan their hand-drawn sketches or paintings to further refine and enhance them digitally.\n\nDigital Brushes and Texture Packs: Illustrator designers may use digital brushes and texture packs, which are collections of pre-made brushes and textures, to add depth, texture, and unique effects to their digital illustrations. These resources expand their creative possibilities and save time in the creation process.\n\nColor Tools: Color plays a vital role in illustrations. Illustrator designers use color tools to select, create, and manipulate colors effectively. This includes color picker tools within the illustration software, color swatch libraries, and sometimes digital color mixing tools.\n\n3D Modeling Software: Depending on the project requirements, illustrator designers may use 3D modeling software like Autodesk Maya or Blender to create 3D models that can be incorporated into their illustrations, providing a sense of depth and realism.",
        
      ),
      Career(
        title: "Type Design",
        assetPath: "assets/images/career_path_img4.png",
        overview:
            '''A type designer is a specialist who creates and designs typefaces, also known as fonts. They possess a deep understanding of typography, letterforms, and the technical aspects of font design. Type designers are skilled in crafting alphabets, characters, and symbols that are visually harmonious, legible, and suitable for various applications.
Type designers combine elements of artistry, design principles, and technical expertise to create new typefaces or modify existing ones. They consider factors such as letterform proportions, stroke weight, counter shapes, spacing, and kerning to ensure the overall readability and aesthetics of the typeface.
They work with precision and meticulous attention to detail to create letterforms that are consistent and visually appealing across different sizes, resolutions, and mediums. Type designers also need to consider the appropriate use of ligatures, alternate characters, and diacritical marks to support multiple languages and typographic variations.
To create typefaces, type designers often utilize specialized software like Glyphs, FontLab, or Adobe Font Development Kit for OpenType (AFDKO). These tools provide a platform for designing and refining typefaces, allowing designers to manipulate and fine-tune every aspect of the characters.
In addition to creating new typefaces, type designers may also collaborate with clients or foundries to customize existing fonts or develop bespoke typefaces that align with specific branding or design requirements. They communicate with clients, graphic designers, or art directors to understand the intended usage and incorporate their feedback into the design process.''',
        skills:
            '''1. Typography Knowledge: Type designers have a deep understanding of typography principles, including letterforms, spacing, hierarchy, and legibility. They are knowledgeable about various typographic styles, historical influences, and contemporary trends.
2. Drawing and Calligraphy Skills: Type designers possess strong drawing skills, as they create and refine letterforms using traditional or digital tools. They have a keen eye for proportions, curves, and details, ensuring that each character harmonizes with others in the typeface.
3. Design and Aesthetics: Type designers have a strong sense of design aesthetics. They can create visually appealing and well-balanced typefaces that are aesthetically pleasing and suitable for various applications and contexts.
4. Software Proficiency: Type designers are skilled in using specialized font design software such as Glyphs, FontLab, or FontForge. They understand the technical aspects of font creation, including glyph construction, spacing, kerning, and OpenType feature implementation.
5. Attention to Detail: Type designers pay meticulous attention to detail. They ensure consistent spacing, smooth curves, and precise alignment of all characters in the typeface. They also focus on the legibility of small sizes and screen optimization for digital use.
6. Research and Analysis: Type designers conduct research on historical typefaces, cultural influences, and user needs. They analyze the intended usage and target audience to create typefaces that meet specific requirements and effectively convey the desired message.
7. Collaboration and Communication: Type designers often collaborate with clients, graphic designers, or art directors. They have strong communication skills to understand client expectations, incorporate feedback, and work collaboratively to achieve the desired result.
8. Problem-Solving: Type designers encounter various challenges during the font design process. They possess problem-solving skills to overcome technical issues, refine letterforms, and address compatibility or legibility concerns.''',
        tools:
            '''1. Font Design Software: Specialized font design software is essential for type designers. Popular software options include Glyphs, Font Lab, Font Forge, and Robo Font. These tools provide a comprehensive platform for designing, editing, and generating fonts with precise control over letterforms, spacing, and OpenType features.
2. Vector Graphics Software: Type designers often use vector graphics software like Adobe Illustrator or CorelDRAW to create initial sketches, refine letterforms, or design custom glyphs. These tools offer powerful drawing and manipulation capabilities to create scalable and editable vector artwork.
3. Font Editors: Font editors are software plugins or extensions that work within design software like Adobe Illustrator or Glyphs. They provide additional tools and features specifically designed for type design, enabling type designers to streamline their workflow and enhance efficiency.
4. Font Testing Tools: Type designers utilize font testing tools like Adobe InDesign or Adobe Font Folio to preview and test their typefaces in various contexts, layouts, and sizes. These tools allow designers to assess the legibility, spacing, and overall appearance of their fonts.
5. Scanners and Pen Tablets: Type designers may use scanners to digitize hand-drawn sketches or calligraphy samples as a starting point for their typefaces. Pen tablets, such as Wacom tablets, provide a natural and precise drawing experience when creating or refining letterforms digitally.
6. Text Editing and Proofing Tools: Type designers utilize text editing software such as Adobe InDesign, Microsoft Word, or specialized proofing tools to assess how their typefaces perform in real-world text settings. This helps them identify and address issues related to character spacing, kerning, or readability.
7. Glyph and Character Management Tools: As type designers work with a large number of characters and glyphs, they use specialized software like DTL OTMaster, FontLab VI, or GLYPHICONS to manage, organize, and edit the extensive glyph sets within their typefaces.
8. Font Conversion and Generation Tools: Type designers may utilize font conversion and generation tools like FontLab VI, TransType, or FontForge to convert fonts between different formats (e.g., TrueType to OpenType) or generate font files suitable for specific platforms and operating systems.
9. Font Validation and Quality Assurance Tools: Font validation tools like FontValidator or Microsoft VOLT help type designers ensure that their typefaces comply with industry standards, contain correct metadata, and are free of technical errors before release.''',
        
      ),
      Career(
        title: "Audio/Visual Packaging",
        assetPath: "assets/images/career_path_img5.png",
        overview:
            '''Audio/visual packaging refers to the design and presentation of physical packaging for audio and visual media, such as CDs, DVDs, Blu-rays, vinyl records, and other multimedia formats. It involves creating a visually captivating and functional package that not only protects and stores the content but also enhances the overall consumer experience.

The primary goal of audio/visual packaging is to attract attention, communicate the essence of the content, and provide a visually appealing representation of the artistic or entertainment value within. It often incorporates graphic design, typography, photography, and illustration to create an immersive and compelling package.

Audio/visual packaging encompasses various elements, including the outer cover, inner sleeves, inserts, booklets, labels, and additional special features. These elements are carefully designed to reflect the content's genre, style, or brand identity, while also conveying essential information such as track listings, credits, lyrics, or bonus material details.
Additionally, audio/visual packaging often incorporates tactile elements, such as embossing, debossing, foil stamping, or unique textures, to provide a tangible and memorable experience for consumers. It may also include interactive features, such as pop-up sections, augmented reality components, or hidden surprises, to engage and delight the audience.''',
        skills: '''
1. Branding and Identity: Understanding branding principles and the ability to translate a brand's identity into packaging design is important. This involves maintaining consistency with existing brand elements, such as logos, color schemes, and visual styles, to create a cohesive packaging experience.
2. Print and Packaging Knowledge: Familiarity with print production processes, materials, and packaging construction is necessary to ensure that the designed packaging can be efficiently produced and meets industry standards. Knowledge of printing techniques, finishing options, and die-cutting is valuable for creating visually striking and functional packaging.
3. Attention to Detail: Attention to detail is crucial in audio/visual packaging design to ensure accurate placement of graphics, legible text, and proper alignment. It also involves meticulous proofreading and checking for errors or inconsistencies in the content, such as track listings, credits, or other written information.
4. Creative Conceptualization: The ability to conceptualize unique and innovative packaging ideas is important. Thinking outside the box and coming up with creative solutions that captivate the target audience and differentiate the product from competitors is a valuable skill in audio/visual packaging design.
5. Communication and Collaboration: Effective communication skills are necessary when working with clients, marketing teams, printers, and other stakeholders involved in the packaging design process. Collaboration and the ability to understand and incorporate feedback are key to delivering packaging designs that align with the client's vision and objectives.
6. Knowledge of Target Audience: Understanding the target audience's preferences, expectations, and purchasing behavior is crucial in designing packaging that resonates with them. This includes researching and analyzing trends, market demands, and consumer insights to create packaging designs that appeal to the intended audience.
7. Technical Software Skills: Proficiency in graphic design software such as Adobe Photoshop, Illustrator, and InDesign is essential for creating and preparing packaging artwork. Additionally, knowledge of 3D modeling software or packaging-specific software can be beneficial for visualizing and prototyping packaging designs.
8. Marketing and Consumer Psychology: Understanding marketing principles and consumer psychology can help in creating packaging designs that effectively communicate the value and appeal of the content. It involves considering factors such as shelf visibility, shelf impact, and consumer emotions to create packaging designs that drive interest and sales.''',
        tools:
            '''1. Graphic Design Software: Designers rely on graphic design software like Adobe Photoshop, Adobe Illustrator, and Adobe InDesign to create and manipulate visual elements, such as artwork, typography, and layouts. These programs provide powerful tools for image editing, vector graphics creation, and page layout design.
2. 3D Modeling and Rendering Software: For packaging designs that require 3D visualization, software like Autodesk 3ds Max, Cinema 4D, or Blender can be utilized. These tools enable designers to create realistic 3D mock-ups of the packaging, allowing for better visualization and presentation of the final product.
3. Packaging Dieline Templates: Dieline templates are pre-designed 2D templates that outline the flat shape and structure of packaging, including folds, cuts, and glue areas. Designers can find or create dieline templates in software like Adobe Illustrator or dedicated packaging design software to ensure accurate sizing and structural integrity of the packaging.
4. Digital Asset Management (DAM) Tools: DAM tools like Adobe Bridge or Extensis Portfolio help designers organize and manage digital assets, including high-resolution images, logos, illustrations, and other graphical elements. These tools facilitate efficient file management and quick access to the required assets during the design process.
5. Digital Prototyping and Mockup Tools: Tools such as Adobe Dimension or Mockuuups Studio allow designers to create digital mockups and realistic product renderings. They enable the placement of packaging designs on virtual product models or scene setups, providing a realistic preview of how the packaging will look in real-life situations.
6. Color Management Tools: Color accuracy and consistency are crucial in packaging design. Color management tools, such as color calibration devices (e.g., X-Rite i1Display Pro) and color management software (e.g., X-Rite ColorMunki), help designers ensure accurate color reproduction across different devices and printing processes.
7. Font Libraries and Management Software: Designers often utilize font libraries and management software, such as Adobe Fonts, FontBase, or Suitcase Fusion, to organize, preview, and install fonts for use in packaging designs. These tools help designers explore and manage an extensive collection of fonts efficiently.
8. Collaboration and File Sharing Platforms: To collaborate with clients, team members, or printers, designers utilize collaboration and file sharing platforms like Dropbox, Google Drive, or WeTransfer. These platforms facilitate seamless sharing, feedback, and version control of design files and assets throughout the packaging design process.
9. Prepress and Printing Tools: Packaging designers may need access to prepress and printing tools to prepare files for print production. This can include tools for color separation, preflighting, and packaging file optimization to ensure accurate and high-quality print output.''',
        
      ),
      Career(
        title: "Art Director",
        assetPath: "assets/images/career_path_img6.png",
        overview:
            '''An Art Director is a professional who oversees and guides the artistic and visual elements of a project, typically within the fields of advertising, film, television, theater, or graphic design. They are responsible for developing and implementing the overall visual style and concept for a production or campaign.
Art Directors work closely with clients, creative teams, and production crews to ensure that the visual aesthetics align with the project's objectives and target audience. They may collaborate with graphic designers, copywriters, photographers, set designers, and other creative professionals to bring their vision to life.

 They collaborate closely with clients, creative teams, and artists to develop compelling visual concepts, ensuring they are innovative, engaging, and effectively communicate the desired message. Art directors provide guidance on color schemes, typography, imagery, and layout, while also considering factors like target audience, brand identity, and industry trends. They lead and inspire teams of designers, photographers, illustrators, and other creative professionals, guiding their work and ensuring the final product meets or exceeds client expectations. The role of an art director requires a blend of artistic talent, strategic thinking, leadership skills, and a deep understanding of visual communication to bring ideas to life in a visually impactful and cohesive manner.''',
        skills:
            '''1. Creativity: Art directors are highly creative individuals who can generate innovative ideas and concepts that effectively communicate the desired message. They have a strong sense of aesthetics and an ability to think outside the box.
2. Visual Communication: Art directors excel in visual storytelling and have a deep understanding of how to use design elements, typography, color, and imagery to convey messages and evoke emotions.
3. Leadership: Art directors are skilled leaders who can guide and inspire creative teams, providing clear direction and feedback to ensure the successful execution of projects. They can collaborate effectively, delegate tasks, and manage deadlines.
4. Strategic Thinking: Art directors possess strategic thinking abilities, enabling them to align visual concepts with broader project objectives, target audience preferences, and brand identity. They consider market trends, competition, and client requirements to develop effective visual strategies.
5. Technical Proficiency: Art directors are proficient in design software and tools, enabling them to effectively communicate their ideas and guide the creative process. They have a solid understanding of design principles, layout, image editing, and typography.
6. Communication Skills: Art directors have excellent communication skills, both verbal and written. They can articulate their vision, provide clear instructions, and collaborate effectively with clients, team members, and stakeholders.
7. Attention to Detail: Art directors have a keen eye for detail, ensuring that every element of a visual project is meticulously crafted. They pay attention to composition, color accuracy, image quality, and overall visual consistency.
8. Adaptability:  Art directors can adapt to changing project requirements, client preferences, and industry trends. They are open to feedback and can make necessary adjustments to their designs or concepts.''',
        tools:
            '''1. Design Software: Art directors are proficient in industry-standard design software such as Adobe Creative Suite, which includes applications like Photoshop, Illustrator, InDesign, and others. These tools help them create, edit, and manipulate visual elements with precision and creativity.
2. Project Management Software: Art directors rely on project management tools like Trello, Asana, or Basecamp to plan, organize, and track the progress of projects. These tools facilitate collaboration, task assignment, deadline management, and overall project coordination.
3. Mood Boards and Inspiration Platforms: Art directors use tools like Pinterest, Behance, or Dribbble to curate and gather visual inspiration, create mood boards, and share reference materials with the creative team. These platforms help them establish a visual direction for their projects.
4. Color Palette and Typography Resources: Art directors utilize online resources and tools like Adobe Color, Coolors, or Google Fonts to explore and select appropriate color palettes and typography combinations for their designs. These resources offer a wide range of options and aid in creating cohesive visual styles.
5. Collaboration and Communication Tools: Art directors rely on collaboration and communication tools like Slack, Microsoft Teams, or Zoom to facilitate seamless communication with team members, clients, and stakeholders. These tools enable real-time discussions, file sharing, and feedback exchange.
6. Digital Asset Management Systems: Art directors utilize digital asset management (DAM) systems like Adobe Experience Manager, Bynder, or Widen Collective to organize and manage visual assets, ensuring easy access, version control, and efficient asset sharing across projects.
7. Print and Production Tools: In projects involving print materials, art directors work with printing and production tools such as Adobe InDesign or specialized prepress software to prepare files for print, ensure color accuracy, and handle pre-production tasks ''',
        
      ),
      Career(
        title: "Book Designer",
        assetPath: "assets/images/career_path_img7.png",
        overview:
            '''A book designer is a creative professional who specializes in the visual design and layout of books. They play a crucial role in transforming written content into visually engaging and aesthetically pleasing publications. Book designers work closely with authors, publishers, and sometimes illustrators to create book covers, interior layouts, and overall book designs that effectively convey the essence of the content and attract readers.

Book designers possess a strong understanding of typography, color theory, and graphic design principles. They carefully select fonts, arrange text, and create visually appealing compositions that enhance readability and enhance the overall reading experience. Additionally, they consider the target audience, genre, and market trends to ensure that the book design resonates with its intended readership.

In collaboration with authors and publishers, book designers provide creative input and collaborate on conceptualizing and refining the visual elements of the book. They create or incorporate illustrations, graphics, and imagery that align with the book's theme and enhance its narrative or informational content.
Attention to detail is a critical aspect of a book designer's work. They ensure consistent formatting, proper alignment, and appropriate use of white space throughout the book's layout. They also work closely with print production teams to ensure that the final printed copies maintain the intended design and quality.
Book designers may be skilled in using design software such as Adobe InDesign, Illustrator, or other specialized tools to bring their designs to life. They stay up to date with industry trends and advancements in book design and publishing technologies.''',
        skills: '''
1. Typography: A thorough understanding of typography is crucial for book designers. They have knowledge of various typefaces, their characteristics, and how to use them effectively to ensure readability and convey the desired tone or mood.
2. Attention to Detail: Book designers pay close attention to details such as margins, spacing, leading, and kerning to ensure consistent and precise layouts throughout the book. They have a keen eye for spotting errors and inconsistencies.
3. Communication and Collaboration: Book designers work closely with authors, publishers, and sometimes illustrators. Effective communication and collaboration skills are essential to understand the vision, gather feedback, and incorporate it into the design process.
4. Creativity: Book designers possess a high level of creativity and the ability to generate original and innovative design concepts. They find unique ways to visually represent the book's content, theme, or genre, making it visually compelling and distinctive.
5. Software Proficiency: Book designers are proficient in design software such as Adobe InDesign, Illustrator, or other tools used in the industry. They leverage these tools to create layouts, manipulate typography, and incorporate visual elements seamlessly.
6. Knowledge of Publishing Industry: Book designers understand the publishing industry, including current trends, genres, and market expectations. They are aware of book formatting guidelines, printing processes, and industry standards for both print and digital publications.
7. Time Management: Book designers handle multiple projects simultaneously and work within strict deadlines. Effective time management skills allow them to prioritize tasks, meet project milestones, and deliver high-quality designs on time.''',
        tools: '''
  1. Design Software: Book designers primarily rely on professional design software like Adobe InDesign, which offers robust layout and typesetting capabilities. Adobe Illustrator and Photoshop are also used for creating or editing graphics, illustrations, or cover designs.
2. Typography Tools: Tools like Adobe Typekit, Google Fonts, or FontBook assist book designers in exploring and selecting appropriate typefaces for different sections of the book. These tools provide access to a vast library of fonts suitable for various design styles and genres.
3. Image Editing Software: Book designers may utilize image editing software like Adobe Photoshop or GIMP to enhance or retouch images used in book designs. These tools help adjust colors, apply filters, crop images, or remove imperfections.
4. Digital Publishing Platforms: For e-books or digital publications, book designers may use specialized digital publishing platforms like Adobe Digital Publishing Suite or Apple iBooks Author. These tools allow designers to create interactive, multimedia-rich digital books with features like embedded videos, animations, or interactive elements.

5.Collaboration and Communication Tools: Book designers often collaborate with authors, editors, and publishers. Tools like Dropbox, Google Drive, or project management platforms like Asana or Trello facilitate seamless communication, file sharing, and version control during the design process.
6. Prepress Software: Book designers may work with prepress software like Adobe Acrobat Pro or Enfocus PitStop to ensure that the final print-ready files adhere to industry standards and are error-free. These tools assist in tasks like preflighting, color management, or generating press-ready PDF files.
7. Printing and Production Tools: Book designers coordinate with printing and production teams. Software such as Adobe InDesign or specialized prepress software provides options for specifying print parameters, color profiles, and ensuring accurate output during the printing process.
''',
        
      ),
    ],
    CareerType.adsAndMedia: const [
      Career(
        title: "Copywriter",
        assetPath: "assets/images/ads_and_media_img1.png",
        overview:
            '''A copywriter is a professional who specializes in crafting written content, known as copy, for various mediums and purposes. Copywriters are skilled communicators who create compelling, persuasive, and engaging messages with the goal of influencing the target audience, driving action, and achieving specific objectives.
The primary responsibility of a copywriter is to understand the target audience, the client's brand, and the desired message or call to action. They use their writing expertise and creativity to develop clear, concise, and impactful copy that effectively communicates the intended message while aligning with the client's brand voice and tone.
Copywriters work across a wide range of mediums, including advertisements, websites, social media posts, brochures, sales letters, product descriptions, email campaigns, and more. They have the ability to adapt their writing style and tone to suit different audiences, industries, and platforms.
In addition to writing skills, copywriters possess a strong understanding of marketing and consumer psychology. They know how to craft copy that grabs attention, appeals to emotions, and persuades readers to take the desired action. They are adept at creating unique selling propositions, highlighting benefits, and creating a sense of urgency or desire to engage the audience.''',
        skills:
            '''Copywriters possess a variety of skills that enable them to create effective and impactful copy. Here are some key skills typically associated with copywriting:

1. Writing Skills: Copywriters have excellent writing skills, including grammar, spelling, punctuation, and syntax. They can effectively craft clear, concise, and engaging copy that conveys the desired message while maintaining proper language usage.

2. Creativity: Copywriters are creative thinkers who can generate innovative ideas and approaches to capture the attention of their target audience. They employ creative writing techniques, such as storytelling, wordplay, metaphors, and persuasive language, to make their copy memorable and compelling.

3. Research Abilities: Copywriters conduct thorough research to gather relevant information about the target audience, industry trends, client's products or services, and competitors. They use this research to understand the audience's needs and desires, identify unique selling points, and create persuasive arguments or benefits in their copy.

4. Marketing and Consumer Psychology: Copywriters have a solid understanding of marketing principles and consumer psychology. They know how to appeal to the emotions, desires, and motivations of their target audience. By understanding consumer behavior and decision-making processes, they can tailor their copy to resonate with the audience and drive desired actions.

5. Adaptability and Versatility: Copywriters are adaptable and versatile in their writing style and tone. They can adjust their approach based on the medium, audience, brand guidelines, and objectives of each project. They can write in a variety of styles, such as persuasive, informative, conversational, or formal, to suit the specific requirements.

6. Attention to Detail: Copywriters pay close attention to detail to ensure accuracy, consistency, and quality in their work. They meticulously proofread and edit their copy to eliminate errors, check for clarity, and refine the overall flow and structure''',
        tools:
            '''Copywriters rely on a range of tools to enhance their productivity and effectiveness. Here are some commonly used tools by copywriters:

1. Word Processing Software: Copywriters primarily use word processing software like Microsoft Word, Google Docs, or Apple Pages to write, edit, and format their copy. These tools provide essential features for organizing and structuring content, checking grammar and spelling, and ensuring consistency.

2. Grammar and Spell Checkers: Copywriters utilize grammar and spell checkers like Grammarly or Hemingway Editor to identify and correct grammar, spelling, punctuation, and style errors in their copy. These tools help ensure that the copy is error-free and written with clarity.

3. Thesaurus and Writing Reference Tools: Thesaurus and writing reference tools such as Merriam-Webster's Thesaurus or Oxford English Dictionary assist copywriters in finding synonyms, antonyms, definitions, and examples of words or phrases. These tools enhance the writer's vocabulary and help find the most appropriate and engaging language for the copy.

4. Project Management and Organization Tools: Copywriters often use project management and organization tools like Trello, Asana, or Basecamp to keep track of their projects, set deadlines, collaborate with team members, and manage client communications. These tools help them stay organized, prioritize tasks, and ensure efficient project workflow.

5. SEO Tools: For web-based copywriting, copywriters may employ SEO tools such as Google Keyword Planner, SEMrush, or Moz to conduct keyword research and optimize their copy for search engines. These tools provide insights into relevant keywords, search volumes, and competition, enabling copywriters to write copy that performs well in search engine rankings.

6. Style Guides and Brand Guidelines: Copywriters refer to style guides and brand guidelines provided by clients or organizations to ensure consistency in tone, style, and brand voice. These guides outline specific rules and preferences related to language usage, formatting, and brand-specific terminology.

7. Communication and Collaboration Tools: Copywriters use communication and collaboration tools like email, messaging apps (Slack, Microsoft Teams), and video conferencing platforms (Zoom, Google Meet) to communicate with clients, collaborate with team members, and receive feedback on their work.
''',
      ),
      Career(
        title: "Photography",
        assetPath: "assets/images/career_path_img8.png",
        overview:
            '''A photographer is a trained professional who records images using a camera, special lights, and other tools to enhance their subject. Photographers tend to fall into one of four categories: commercial, fashion, journalistic, and fine art. Commercial photographers work for businesses and often take photographs of products for use in catalogs, on websites, or other purposes. They might also have businesses that focus on, or feature, portraiture, including wedding photographs.
Photography is a highly creative and rewarding profession that involves capturing and documenting moments, scenes, and subjects through the lens of a camera. Photographers use their technical skills, artistic vision, and knowledge of equipment to produce visually compelling images that evoke emotions, convey stories, or provide information.

As a professional photographer, you would typically specialize in a specific area or genre and build a portfolio to showcase your skills and style. You may work as a freelancer, owning your own business, or be employed by media organizations, advertising agencies, or photography studios.
Photographers use various techniques, equipment, and editing software to create visually appealing and meaningful images. They often work with clients to understand their requirements, manage lighting and composition, and direct subjects during photoshoots.
Aside from technical expertise, successful photographers also need creativity, a strong eye for detail, and the ability to capture unique perspectives. They must keep up with industry trends, market their work, and continuously develop their skills.
It's important to note that photography as a profession can be highly competitive and demanding. It requires dedication, perseverance, and the ability to adapt to changing technologies and client preferences. However, it can also be a rewarding and fulfilling career for those passionate about visual storytelling and capturing moments in time.''',
        skills:
            '''1. Hand-eye coordination: Precise control over the camera and its settings, including adjusting focus, aperture, and shutter speed, requires good hand-eye coordination.
2. Manual dexterity: Operating camera controls, adjusting lenses, and handling other equipment demands nimble fingers and fine motor skills.
3. Stamina: Photographers often spend long hours on their feet during photoshoots, carrying heavy camera gear and moving around to capture shots from different angles. Endurance and physical stamina are necessary for such situations.
4. Visual acuity: Having sharp vision to accurately assess lighting, composition, and focus is crucial for capturing high-quality photographs.
5. Agility: In certain photography genres like sports or wildlife photography, quick reflexes and agility are vital to capture fast-moving subjects or dynamic moments.
6. Depth perception: Understanding and representing depth in images requires the ability to perceive spatial relationships accurately.''',
        tools:
            '''1.Camera: The primary tool of a photographer, cameras come in different types, such as DSLR (Digital Single Lens Reflex), mirrorless, or film cameras. They capture images through lenses and offer manual control over settings like aperture, shutter speed, and ISO.
2. Lenses: Interchangeable lenses allow photographers to achieve different focal lengths, perspectives, and levels of zoom. Common lens types include wide-angle, standard, telephoto, and macro lenses.
3. Tripod: A stable support system that helps eliminate camera shake, especially in low-light situations or for long exposures. Tripods provide stability for capturing sharp images.
4. Lighting Equipment: Depending on the genre, photographers may require additional lighting equipment like studio strobes, continuous lights, reflectors, or diffusers to control and shape light in their shots.
5. Memory Cards: Used to store digital images captured by the camera. High-capacity memory cards ensure photographers can capture a large number of images without running out of space.
6. Editing Software: Post-processing is an essential part of modern photography. Software like Adobe Photoshop, Lightroom, or Capture One allows photographers to enhance images, adjust colors, correct exposure, and apply artistic effects.
7. Computer and Storage: A computer is necessary for image editing and management. Adequate storage devices like external hard drives or cloud storage are essential for backing up and archiving photographs.
8. Accessories: Various accessories such as lens filters, camera bags, remote shutter releases, lens cleaning kits, and extra camera batteries are valuable tools that enhance a photographer's workflow and protect their equipment.''',
        
      ),
      Career(
        title: "Sales & Marketing",
        assetPath: "assets/images/ads_and_media_img2.png",
        overview:
            '''A career in sales and marketing revolves around promoting and selling products, services, or ideas to customers. Sales and marketing professionals play a vital role in driving business growth, building customer relationships, and increasing revenue. Their primary objective is to understand customer needs, communicate the value of offerings, and persuade potential buyers to make a purchase.

Sales and marketing professionals utilize various strategies, tactics, and channels to reach and engage target audiences. They employ market research, data analysis, and consumer insights to identify market trends, customer preferences, and competitive landscapes. This information helps them develop effective marketing campaigns, sales strategies, and pricing models.

In marketing, professionals focus on creating and implementing strategies to raise awareness, generate leads, and build brand equity. They employ tactics such as market segmentation, advertising, content creation, social media marketing, search engine optimization (SEO), email marketing, and public relations to reach and engage potential customers. They analyze campaign performance, track metrics, and leverage customer feedback to refine marketing approaches and optimize return on investment.''',
        skills:
            '''Key skills required for a successful career in sales and marketing include:
 
1. Communication and Interpersonal Skills: Effective communication, active listening, and relationship-building skills are essential for engaging with customers, understanding their needs, and conveying the value proposition of products or services.

2. Strategic Thinking: Sales and marketing professionals must think strategically to develop effective plans, identify market opportunities, and differentiate offerings from competitors. They analyze data, assess market trends, and adapt strategies accordingly.

3. Creativity and Innovation: Thinking creatively allows sales and marketing professionals to develop unique campaigns, engaging content, and innovative approaches to attract and retain customers. They constantly seek fresh ideas and stay up to date with industry trends.

4. Analytical Skills: Data analysis skills enable professionals to interpret market research, track campaign performance, and make data-driven decisions. They identify patterns, extract insights, and measure the effectiveness of marketing efforts.

5. Negotiation and Persuasion: Sales professionals need strong negotiation and persuasion skills to navigate deals, address objections, and influence customer decisions. They build rapport, present compelling arguments, and overcome objections to close sales.

6. Customer Focus: Understanding customer needs, preferences, and pain points is crucial in sales and marketing. Professionals must empathize with customers, tailor their approaches, and deliver personalized experiences to build trust and loyalty.

7. Digital Marketing and Technology: Proficiency in digital marketing platforms, social media channels, marketing automation tools, customer relationship management (CRM) systems, and data analytics software is increasingly important in today's digital-driven landscape.
''',
        tools:
            '''Here's a list of tools commonly used in sales and marketing, along with brief explanations:

1. Salesforce: A leading CRM platform used for managing customer relationships, sales processes, and data.
2. HubSpot CRM: A free CRM software with features for contact management, deal tracking, and email integration.
3. Mailchimp: An email marketing platform that allows professionals to create and manage email campaigns and track their performance.
4. Hootsuite: A social media management tool that helps schedule and publish content across multiple social media platforms.
5. Canva: A graphic design tool with easy-to-use templates and features for creating professional-looking marketing collateral.
6. Google Analytics: A web analytics tool that provides insights into website traffic, user behavior, and campaign performance.
7. Marketo: A marketing automation platform that enables lead management, email marketing, and campaign tracking.
8. SalesLoft: A sales engagement platform that assists in prospecting, email sequencing, and sales communication.
9. Trello: A project management tool that helps teams organize tasks, collaborate, and track project progress.
10. Microsoft PowerPoint: A presentation software widely used for creating and delivering impactful presentations.
11. SurveyMonkey: An online survey tool for gathering customer feedback, conducting market research, and collecting data.
12. LinkedIn Sales Navigator: A tool that provides advanced search and lead generation capabilities for sales professionals on LinkedIn.
13. Google Workspace: A suite of cloud-based productivity tools, including Gmail, Google Docs, Google Sheets, and Google Drive.
14. Moz: An SEO toolset that offers keyword research, site audits, and backlink analysis to improve search engine rankings.
15. Outreach: A sales engagement platform that helps automate and personalize sales outreach, track performance, and optimize workflows.
''',
      ),
      Career(
        title: "Promotions Manager",
        assetPath: "assets/images/ads_and_media_img3.png",
        overview:
            ''' and activities for a company or organization. Their primary role is to develop strategies that increase brand awareness, drive sales, and enhance visibility of products, services, or events. They work closely with marketing and advertising teams to create effective promotional plans, conduct market research, and design promotional materials such as advertisements, brochures, social media content, and press releases. They oversee the production and distribution of these materials across various channels, ensuring consistency with the brand's identity and messaging.  Promotions managers also manage sponsorships, partnerships, and collaborations with other businesses or organizations, negotiating contracts and agreements, and measuring the impact of these partnerships. They analyze the performance and outcomes of promotional campaigns, tracking key metrics like sales figures, website traffic, social media engagement, and customer feedback. They make recommendations for future strategies and adjustments to maximize effectiveness
They also engage with customers, respond to inquiries, and address concerns related to promotions. Promotions managers need to stay updated with industry trends, consumer behaviors, and emerging marketing techniques by attending industry events, conferences, and workshops, and continuously analyzing market data to identify new opportunities and innovative promotional approaches..''',
        skills:
            '''1. Marketing Strategy: Proficiency in developing and implementing effective marketing strategies to achieve promotional goals.

2. Communication: Strong verbal and written communication skills to effectively convey promotional messages to target audiences.

3. Creativity: Ability to think outside the box and generate innovative ideas for promotional campaigns that capture attention and differentiate from competitors.

4. Project Management: Skills in planning, organizing, and managing promotional campaigns from start to finish, ensuring timely execution and successful outcomes.

5. Market Research: Ability to conduct market research, analyze consumer behavior, and identify trends to inform promotional strategies.


6. Relationship Building: Strong interpersonal skills to establish and maintain relationships with internal teams, external partners, and stakeholders.

7. Data Analysis: Proficiency in analyzing marketing data and key metrics to measure the effectiveness of promotional campaigns and make data-driven decisions.
8. Digital Marketing: Familiarity with various digital marketing channels and platforms, including social media, email marketing, and online advertising.
9. Negotiation: Ability to negotiate partnerships, sponsorships, and promotional agreements with external parties to maximize promotional opportunities.
10. Budget Management: Skills in managing and allocating budgets effectively to achieve desired promotional outcomes.
''',
        tools:
            '''Here are some commonly used tools in the field of promotions management:
1. Customer Relationship Management (CRM) Software: Helps manage and analyze customer data, track interactions, and facilitate targeted promotional activities.
2. Project Management Software: Assists in planning, organizing, and tracking the progress of promotional campaigns and activities.
3. Analytics and Reporting Tools: Enables the measurement and analysis of key metrics and performance indicators for promotional campaigns.
4. Social Media Management Platforms: Facilitates scheduling, monitoring, and analyzing social media posts and engagement across various platforms.
5. Email Marketing Software: Helps create, send, and track promotional emails and newsletters to target audiences.
6. Content Management Systems (CMS): Allows for the creation, editing, and publishing of digital content for promotional purposes.
7. Design and Editing Software: Tools like Adobe Photoshop, Illustrator, or Canva aid in creating visually appealing graphics and promotional materials.
''',
      ),
      Career(
        title: "Media Executive",
        assetPath: "assets/images/ads_and_media_img4.png",
        overview:
            '''A career as a media executive in advertising and media involves overseeing and managing the strategic planning, buying, and execution of media campaigns on behalf of clients or within an advertising agency. Media executives play a pivotal role in optimizing the reach and impact of advertising messages by effectively utilizing various media channels and platforms.

Media executives are responsible for understanding their clients' goals, target audience, and budgetary constraints to develop comprehensive media strategies. They analyze market research, consumer behavior, and industry trends to identify the most suitable media channels and platforms for reaching the target audience effectively. This includes traditional media channels such as television, radio, print, and outdoor advertising, as well as digital media channels like online display advertising, social media, search engine marketing, and video streaming platforms.
In summary, a career as a media executive in advertising and media requires a blend of strategic thinking, analytical skills, creativity, and business acumen. It involves understanding client needs, developing effective media strategies, negotiating media buying deals, monitoring campaign performance, and continuously adapting to the evolving media landscape. With their expertise, media executives play a vital role in shaping the success of advertising campaigns and driving the achievement of client objectives.''',
        skills:
            '''A career as a media executive in advertising and media demands a diverse set of skills to effectively navigate the complexities of the industry. Here are some essential skills required for this role:

1. Strategic Thinking: Media executives must have strong strategic thinking abilities to develop effective media plans and campaigns. They need to analyze client goals, target audience insights, market trends, and competitive landscapes to formulate media strategies that align with overall advertising objectives.
2. Data Analysis: Proficiency in data analysis is crucial for media executives. They should be able to interpret and draw insights from campaign metrics, audience data, market research, and industry trends. This skill helps them make informed decisions, optimize media plans, and evaluate campaign performance.
3. Media Planning and Buying: Media executives should possess expertise in media planning and buying. This includes identifying appropriate media channels, negotiating favorable media rates and placements, allocating budgets effectively, and ensuring optimal media reach and frequency.
4. Industry Knowledge: Staying updated on industry trends, media innovations, emerging platforms, and changing consumer behaviors is vital for media executives. They need to have a deep understanding of the media landscape to recommend and implement the most relevant and impactful media strategies.
''',
        tools:
            '''Here are some tools commonly used by media executives in advertising and media:
1. Media Planning and Buying Software: Tools like Mediaocean, Strata, and Telmar are used to streamline and automate the media planning and buying process, including budgeting, campaign management, and vendor negotiations.
2. Analytics and Data Visualization Tools: Platforms such as Google Analytics, Tableau, and Adobe Analytics help media executives analyze campaign data, track performance metrics, and visualize insights to make data-driven decisions.
3. Market Research Tools: Tools like Nielsen, comScore, and Kantar provide valuable market research data, audience insights, and media consumption patterns, enabling media executives to understand target demographics and optimize media strategies.
4. Social Media Management Platforms: Tools such as Hootsuite, Sprout Social, and Buffer allow media executives to manage and schedule social media posts, monitor engagement, and analyze social media metrics for effective social media campaigns.
5. Media Monitoring and Reporting Tools: Tools like Meltwater, Cision, and Brandwatch help media executives monitor media coverage, track brand mentions, and gather insights from online news articles, social media, and other digital sources.
6. Project Management Software: Platforms like Asana, Trello, and Monday.com assist media executives in organizing and tracking campaign workflows, deadlines, and team collaboration for efficient project management.
7. Presentation and Design Tools: Tools like Microsoft PowerPoint, Keynote, and Canva enable media executives to create visually appealing presentations, pitch decks, and campaign reports for client meetings and internal communication.''',
      
      ),
      Career(
        title: "Account Planning",
        assetPath: "assets/images/ads_and_media_img5.png",
        overview:
            '''Account planning is a specialized career within the field of advertising and media that focuses on understanding consumer behavior, developing strategic insights, and shaping effective advertising campaigns. Account planners work closely with clients, creative teams, and media planners to ensure that advertising efforts are strategically targeted and resonate with the intended audience.

The role of an account planner involves conducting thorough research and analysis to gain a deep understanding of the target market, consumer preferences, and industry trends. They gather data from various sources, including market research studies, consumer surveys, focus groups, and social media analytics, to uncover valuable insights about the target audience's motivations, needs, and behaviors.

Based on their research findings, account planners collaborate with clients and creative teams to develop advertising strategies and messaging that effectively communicate the brand's values, benefits, and unique selling propositions. They contribute to the development of creative briefs, ensuring that the messaging aligns with the overall brand strategy and resonates with the target audience.
Account planners also play a critical role in evaluating the effectiveness of advertising campaigns. They monitor campaign performance, track key metrics, and provide insights and recommendations for optimization. They work closely with media planners to identify the most relevant and impactful media channels and touchpoints to reach the target audience.''',
        skills:
            '''A successful career in account planning in advertising and media requires a diverse set of skills. Here are some key skills required for account planners:
1. Consumer Insight: Account planners need a strong ability to gather and analyze consumer data, conduct research, and derive meaningful insights about target audiences. This includes understanding consumer behavior, motivations, and needs to inform effective advertising strategies.
2. Strategic Thinking: Account planners must possess excellent strategic thinking skills to develop advertising strategies that align with client objectives and effectively reach the target audience. They need to connect consumer insights with brand objectives and creative execution to develop compelling and impactful campaigns.
3. Research and Analysis: Account planners must have strong research and analytical skills to collect and interpret data, conduct market research, and identify relevant insights. They should be proficient in using research tools, analyzing data, and drawing meaningful conclusions to inform campaign strategies.
4. Brand and Market Knowledge: Account planners need to have a deep understanding of the brands they work with, their target markets, and the competitive landscape. This includes staying updated on industry trends, consumer preferences, and emerging technologies that impact advertising and media.
5. Creative Brief Development: Account planners play a key role in developing creative briefs that guide the creative teams. They should be able to distill research findings, insights, and client objectives into clear and inspiring briefs that inspire creative ideation and execution.
6. Problem Solving: Account planners often encounter challenges and obstacles during the campaign development process. Strong problem-solving skills help them overcome obstacles, find innovative solutions, and adapt strategies to changing circumstances.''',
        tools:
            '''Here are some commonly used tools in the field of account planning in advertising and media:
1. Market Research Tools: Account planners use various market research tools to gather consumer insights and data.
2. Consumer Trend and Insights Platforms: Subscription-based platforms like Trend Watching, Mintel, or Nielsen provide access to consumer trend reports, industry research, and market insights.
3. Data Visualization Tools: Tools like Tableau or Google Data Studio enable account planners to analyze and present complex data in visually compelling ways. 
4. Communication and Collaboration Tools: Account planners rely on various communication and collaboration tools to work effectively with team members, clients, and stakeholders. 
5. Presentation Software: Account planners often use presentation software such as Microsoft PowerPoint or Apple Keynote to create visually engaging and persuasive presentations. 
6. Media Planning and Buying Tools: Account planners may work closely with media planners and use specialized tools for media planning and buying. 
7. Social Media Management Tools: As social media plays a significant role in advertising and consumer insights, account planners may utilize social media management platforms like Hootsuite, Buffer, or Sprout Social. 
8. Competitive Analysis Tools: Account planners use tools to conduct competitive analysis, track competitor advertising campaigns, and gather insights.
9. Creative Brief Templates: Account planners often work with creative teams to develop creative briefs. Templates or standardized formats for creative briefs can help ensure consistent and thorough communication of campaign objectives, target audience insights, and key messaging.''',
        
      ),
      Career(
        title: "Advertising Designer",
        assetPath: "assets/images/ads_and_media_img6.png",
        overview:
            ''' persuasive designs to promote products, services, or brands. They collaborate with clients, art directors, copywriters, and marketing teams to develop effective advertising campaigns that communicate messages and engage target audiences.
The main objective of an advertising designer is to create visually compelling designs that capture attention, convey the desired message, and evoke a desired response from the audience. They combine their creative skills with strategic thinking to develop concepts and visuals that align with the campaign goals and target market.
In their role, advertising designers may be involved in various aspects of the advertising process, including brainstorming ideas, conducting research, sketching concepts, creating mockups, selecting and manipulating visuals, designing layouts, and producing final artwork. They often work with graphic design software such as Adobe Photoshop, Illustrator, and InDesign to bring their designs to life.''',
        skills:
            '''Advertising designers need to possess a range of skills to excel in their careers. These skills include: 
1. Graphic Design: Proficiency in graphic design principles, including layout, composition, typography, color theory, and visual hierarchy, is crucial for creating visually appealing and impactful advertising designs.
2. Creativity and Conceptualization: Advertising designers must possess strong creative thinking abilities to develop innovative and engaging concepts that effectively communicate the desired message and stand out in a crowded advertising landscape.
3. Visual Communication: They should have a keen understanding of visual storytelling and how to use imagery, typography, and other design elements to convey messages, evoke emotions, and create memorable experiences for the target audience.
4. Branding and Marketing Knowledge: An understanding of branding principles and marketing strategies helps advertising designers align their designs with the client's brand identity and overall marketing objectives. They must be able to visually represent the brand's values, personality, and positioning in their designs.
5. Digital Design Skills: Given the increasing prevalence of digital advertising, proficiency in creating designs for digital platforms such as websites, social media, mobile apps, and display ads is essential. Knowledge of interactive and motion graphics can also be beneficial in creating engaging digital advertising experiences.
6. Collaboration and Communication: Advertising designers work closely with clients, creative teams, and stakeholders. Effective communication and collaboration skills are necessary to understand client briefs, incorporate feedback, present design ideas, and work collaboratively to achieve campaign objectives.
7. Time Management and Adaptability: Working in advertising often involves tight deadlines and fast-paced environments. Advertising designers need to manage their time effectively, prioritize tasks, and be adaptable to changing project requirements or client expectations.''',
        tools:
            '''To excel as an advertising designer, you would typically rely on a combination of traditional and digital tools to create your designs. Here are some commonly used tools in the field of advertising design:
1. Graphic Design Software:  Adobe Creative Suite, which includes Photoshop, Illustrator, and InDesign, is widely used in the industry. These tools offer advanced capabilities for image editing, vector graphics creation, layout design, and typography.
2. Digital Imaging Tools: Tools like Adobe Photoshop allow you to edit and manipulate images, retouch photographs, and create stunning visual effects. You can enhance colors, adjust lighting, remove unwanted elements, and apply various filters or effects to achieve the desired visual impact.
3. Vector Graphics Software: Adobe Illustrator or other vector-based software enables you to create scalable and editable graphics, logos, icons, and illustrations. It provides precise control over shapes, paths, and typography, making it ideal for creating clean and versatile designs.
4. Page Layout Software: Programs like Adobe InDesign are used for designing layouts, including multi-page documents such as brochures, magazines, or print advertisements. They offer features for arranging images, text, and graphical elements in a visually appealing and organized manner.
5. Typography Tools: Having access to a diverse collection of high-quality fonts is crucial for creating impactful typography in advertising design. Online resources, font libraries, and font management software like Adobe Fonts or Font Base can help you explore and manage a wide range of typefaces.
6. Image Stock Libraries: Stock image websites provide a vast selection of professionally captured and curated photographs, illustrations, and vector graphics. These resources can be useful for incorporating high-quality visuals into your advertising designs when custom photography is not feasible.''',
        
      ),
      Career(
        title: "interactive Marketing",
        assetPath: "assets/images/ads_and_media_img7.png",
        overview:
            ''' experiences. They combine their skills in design, technology, and user experience to craft interactive interfaces for various digital platforms, such as websites, mobile applications, games, and interactive installations.
The primary focus of an interactive designer is to create intuitive and visually appealing interfaces that provide an enjoyable and seamless user experience. They collaborate with clients, stakeholders, and other members of the design and development team to understand project requirements, target audience, and project goals.
Interactive designers use their creativity and technical expertise to design interactive elements, user interfaces, navigation systems, animations, and visual effects. They consider factors like user flow, usability, accessibility, and responsiveness to ensure that the digital experience is engaging, functional, and optimized across different devices and screen sizes.''',
        skills: '''Skills required for an interactive designer include:
1. User Experience (UX) Design: An interactive designer must have a solid understanding of user-centered design principles. They conduct user research, create wireframes, design user flows, and develop prototypes to define and refine the user experience.
2. Visual Design: Proficiency in visual design is crucial for interactive designers. They create visually appealing and cohesive designs using color theory, typography, layout principles, and graphic design tools. They consider branding guidelines, aesthetics, and the target audience's preferences to create compelling visual experiences.
3. Interaction Design: Interactive designers excel in creating interactive and engaging experiences through the thoughtful design of user interactions. They design and prototype interactive elements, animations, transitions, and microinteractions that enhance the user experience and provide feedback to user actions.
4. Front-End Development: Basic knowledge of front-end web technologies such as HTML, CSS, and JavaScript is often beneficial for interactive designers. It allows them to understand the technical aspects of their designs and collaborate effectively with developers.
5. User Research and Testing: Interactive designers conduct user research and usability testing to gain insights into user needs, preferences, and behavior. They use this data to inform their design decisions and iterate on their designs to optimize user experiences.
6. Collaboration and Communication: Interactive designers work closely with clients, stakeholders, developers, and other team members. Effective communication and collaboration skills are essential for understanding requirements, articulating design ideas, and working collaboratively throughout the design and development process.
7. Creative Problem Solving: Interactive designers encounter various design challenges and technical constraints. They possess strong problem-solving skills to find creative solutions that balance user needs, business goals, and technical feasibility.''',
        tools:
            '''Interactive designers use a range of tools and software to create and prototype interactive digital experiences. Here are some commonly used tools in the field of interactive design:
1. Design Software: Interactive designers utilize graphic design and prototyping software to create visual designs and interactive prototypes. Popular tools include Adobe Photoshop, Adobe Illustrator, Sketch, Figma, or Adobe XD. These tools enable designers to create interface designs, wireframes, and interactive mockups.
2. Prototyping Tools: Interactive designers employ specialized prototyping tools to create interactive and functional prototypes of their designs. Tools like InVision, Proto.io, Framer, or Axure RP allow designers to add interactive elements, define user flows, and test the usability of their designs. 
3. Coding and Web Development Tools: While not all interactive designers are proficient in coding, having some knowledge of front-end web technologies can be beneficial. Tools like HTML, CSS, and JavaScript, as well as code editors like Visual Studio Code or Sublime Text, can help designers understand the technical aspects of their designs and collaborate effectively with developers.
4. Animation Software: Animation software such as Adobe After Effects or Principle allows interactive designers to create engaging motion graphics, transitions, and animations. These tools are useful for adding interactive elements and bringing designs to life.
5. User Testing and Analytics Tools: Interactive designers utilize user testing and analytics tools to gather insights and feedback on their designs. Tools like User Testing, Hotjar, or Google Analytics provide valuable data on user behavior, interactions, and usability, enabling designers to refine and improve their designs based on user feedback.
6. Collaboration and Project Management Tools: Interactive designers often collaborate with team members, stakeholders, and clients. Tools like Slack, Trello, Asana, or Jira facilitate communication, file sharing, task management, and overall project organization.
7. Mobile Device Emulators: To test and preview designs on various mobile devices, interactive designers use mobile device emulators or simulators. These tools replicate the behavior and appearance of different mobile platforms and screen sizes, allowing designers to optimize their designs for mobile experiences.''',
        
      ),
      Career(
        title: "Photography",
        assetPath: "assets/images/ads_and_media_img8.png",
        overview:
            '''A photographer is a trained professional who records images using a camera, special lights, and other tools to enhance their subject. Photographers tend to fall into one of four categories: commercial, fashion, journalistic, and fine art. Commercial photographers work for businesses and often take photographs of products for use in catalogs, on websites, or other purposes. They might also have businesses that focus on, or feature, portraiture, including wedding photographs.
Photography is a highly creative and rewarding profession that involves capturing and documenting moments, scenes, and subjects through the lens of a camera. Photographers use their technical skills, artistic vision, and knowledge of equipment to produce visually compelling images that evoke emotions, convey stories, or provide information.

As a professional photographer, you would typically specialize in a specific area or genre and build a portfolio to showcase your skills and style. You may work as a freelancer, owning your own business, or be employed by media organizations, advertising agencies, or photography studios.
Photographers use various techniques, equipment, and editing software to create visually appealing and meaningful images. They often work with clients to understand their requirements, manage lighting and composition, and direct subjects during photoshoots.
Aside from technical expertise, successful photographers also need creativity, a strong eye for detail, and the ability to capture unique perspectives. They must keep up with industry trends, market their work, and continuously develop their skills.
It's important to note that photography as a profession can be highly competitive and demanding. It requires dedication, perseverance, and the ability to adapt to changing technologies and client preferences. However, it can also be a rewarding and fulfilling career for those passionate about visual storytelling and capturing moments in time.''',
        skills:
            '''1. Hand-eye coordination: Precise control over the camera and its settings, including adjusting focus, aperture, and shutter speed, requires good hand-eye coordination.
2. Manual dexterity: Operating camera controls, adjusting lenses, and handling other equipment demands nimble fingers and fine motor skills.
3. Stamina: Photographers often spend long hours on their feet during photoshoots, carrying heavy camera gear and moving around to capture shots from different angles. Endurance and physical stamina are necessary for such situations.
4. Visual acuity: Having sharp vision to accurately assess lighting, composition, and focus is crucial for capturing high-quality photographs.
5. Agility: In certain photography genres like sports or wildlife photography, quick reflexes and agility are vital to capture fast-moving subjects or dynamic moments.
6. Depth perception: Understanding and representing depth in images requires the ability to perceive spatial relationships accurately.''',
        tools:
            '''1. Camera: The primary tool of a photographer, cameras come in different types, such as DSLR (Digital Single Lens Reflex), mirrorless, or film cameras. They capture images through lenses and offer manual control over settings like aperture, shutter speed, and ISO.
2. Lenses: Interchangeable lenses allow photographers to achieve different focal lengths, perspectives, and levels of zoom. Common lens types include wide-angle, standard, telephoto, and macro lenses.
3. Tripod: A stable support system that helps eliminate camera shake, especially in low-light situations or for long exposures. Tripods provide stability for capturing sharp images.
4. Lighting Equipment: Depending on the genre, photographers may require additional lighting equipment like studio strobes, continuous lights, reflectors, or diffusers to control and shape light in their shots.
5. Memory Cards: Used to store digital images captured by the camera. High-capacity memory cards ensure photographers can capture a large number of images without running out of space.
6. Editing Software: Post-processing is an essential part of modern photography. Software like Adobe Photoshop, Lightroom, or Capture One allows photographers to enhance images, adjust colors, correct exposure, and apply artistic effects.
7. Computer and Storage: A computer is necessary for image editing and management. Adequate storage devices like external hard drives or cloud storage are essential for backing up and archiving photographs.
8. Accessories: Various accessories such as lens filters, camera bags, remote shutter releases, lens cleaning kits, and extra camera batteries are valuable tools that enhance a photographer's workflow and protect their equipment.''',
      ),
    ]
  };



const List<NewsItem> newsItems = [
  NewsItem(
    img: "assets/images/news_img1.png",
    date: "02 Jan 2023",
    title:
        "KNUST Tops Times Higher\nEducation 2023 Impact Ranking\nfor Quality Education(SDG 4)",
    details:
        "The Kwame Nkrumah University of Science and Technology (KNUST), Kumasi, and Yale School of Nursing in the United States of America (USA) have signed a Memorandum of Understanding (MoU) to establish a collaborative partnership to enhance the pursuit of universal health coverage in Africa. The signing ceremony took place on Tuesday, 6th June 2023, at the Council Chamber of the University.\nRepresenting the team from Yale, Professor Holly Powell Kennedy, the Dean and Helen Vaney Professor of Midwifery at Yale School of Nursing, expressed her enthusiasm for initiating this partnership with KNUST. She revealed that the team had been working diligently for the past two years to make this collaboration a reality. Professor Kennedy further emphasised the commitment of Yale to maintaining such relationships to enhance healthcare on a global scale. She expressed her eagerness to learn and explore new possibilities through this collaboration and commended Dr. Edward Appiah Boateng and Professor (Mrs.) Veronica Millicent Dzomeku for their continuous efforts in helping to establish this partnership.\n\nOn behalf of the Vice-Chancellor, Professor Ellis Owusu-Dabo, the Pro Vice-Chancellor of KNUST, expressed his excitement about the partnership between the two institutions. He described the collaboration as timely and mutually beneficial. He noted that KNUST will not relent on the image it has built for itself as the best university in the world in terms of quality education (SDG 4), adding that the partnership built will further help to build the image and improve the Department of Nursing in both institutions. He hoped that the relationship would help create opportunities for joint projects, knowledge exchange, and further advancements in global healthcare that could transcend to other departments in the University.\n\nProfessor Daniel Yaw Addai Duah, the Dean of the International Programmes Office (IPO), underscored the potential of the partnership to serve as a springboard for joint research initiatives in global healthcare. He anticipated exchange programmes that would enable faculty and staff to learn from each other through the collaboration between both institutions. He also hoped for a lasting relationship between KNUST and Yale.\n\nThe Dean of the Faculty of Allied Health Sciences, Professor (Mrs.) Veronica Millicent Dzomeku, expressed her excitement about this collaboration, highlighting the aspiration of the Department to advance programmes such as Master of Philosophy (MPhil) in Midwifery and Oncology Nursing.\n\nProfessor Kennedy was accompanied by Sohani Sirdeshmukh, Programme Manager of the Office of Global Affairs and Planetary Health, and Linda Ghampson, Lecturer in Simulation at Yale School of Nursing and Mr. Emmanuel Mankattah, Researcher from Educational Assessments and Research Centre (EARC).\n\nAlso present at the meeting were Mrs. Margaret Afi Dzisi, Deputy Registrar of Academic Affairs; Professor Christian Agyare, Provost of the College of Health Sciences; Professor (Mrs.) Victoria Bubunyo Bam, Head of Department of Nursing; Dr. Daniel Norris Bekoe, University Relations Officer; and Dr. Edward Appiah Boateng, Senior Lecturer at the Department of Nursing.\n\nSource: Knust website",
  ),
  NewsItem(
      img: "assets/images/news_img2.png",
      date: "04 Jan 2023",
      title:
          "KNUST And Yale School Of\nNursing Forge Collaborative\nPartnership",
      details:
          "The Kwame Nkrumah University of Science and Technology (KNUST), Kumasi, and Yale School of Nursing in the United States of America (USA) have signed a Memorandum of Understanding (MoU) to establish a collaborative partnership to enhance the pursuit of universal health coverage in Africa. The signing ceremony took place on Tuesday, 6th June 2023, at the Council Chamber of the University.\n\nRepresenting the team from Yale, Professor Holly Powell Kennedy, the Dean and Helen Vaney Professor of Midwifery at Yale School of Nursing, expressed her enthusiasm for initiating this partnership with KNUST. She revealed that the team had been working diligently for the past two years to make this collaboration a reality. Professor Kennedy further emphasised the commitment of Yale to maintaining such relationships to enhance healthcare on a global scale. She expressed her eagerness to learn and explore new possibilities through this collaboration and commended Dr. Edward Appiah Boateng and Professor (Mrs.) Veronica Millicent Dzomeku for their continuous efforts in helping to establish this partnership.\n\nOn behalf of the Vice-Chancellor, Professor Ellis Owusu-Dabo, the Pro Vice-Chancellor of KNUST, expressed his excitement about the partnership between the two institutions. He described the collaboration as timely and mutually beneficial. He noted that KNUST will not relent on the image it has built for itself as the best university in the world in terms of quality education (SDG 4), adding that the partnership built will further help to build the image and improve the Department of Nursing in both institutions. He hoped that the relationship would help create opportunities for joint projects, knowledge exchange, and further advancements in global healthcare that could transcend to other departments in the University.\n\nProfessor Daniel Yaw Addai Duah, the Dean of the International Programmes Office (IPO), underscored the potential of the partnership to serve as a springboard for joint research initiatives in global healthcare. He anticipated exchange programmes that would enable faculty and staff to learn from each other through the collaboration between both institutions. He also hoped for a lasting relationship between KNUST and Yale.\n\nThe Dean of the Faculty of Allied Health Sciences, Professor (Mrs.) Veronica Millicent Dzomeku, expressed her excitement about this collaboration, highlighting the aspiration of the Department to advance programmes such as Master of Philosophy (MPhil) in Midwifery and Oncology Nursing.\n\nProfessor Kennedy was accompanied by Sohani Sirdeshmukh, Programme Manager of the Office of Global Affairs and Planetary Health, and Linda Ghampson, Lecturer in Simulation at Yale School of Nursing and Mr. Emmanuel Mankattah, Researcher from Educational Assessments and Research Centre (EARC).\n\nAlso present at the meeting were Mrs. Margaret Afi Dzisi, Deputy Registrar of Academic Affairs; Professor Christian Agyare, Provost of the College of Health Sciences; Professor (Mrs.) Victoria Bubunyo Bam, Head of Department of Nursing; Dr. Daniel Norris Bekoe, University Relations Officer; and Dr. Edward Appiah Boateng, Senior Lecturer at the Department of Nursing.\n\nSource: Knust website"),
  NewsItem(
      img: "assets/images/news_img3.png",
      date: "23 May 2023",
      title: "Skill Organizing Teams attend\nWorldSkills Workshop",
      details:
          "WorldSkills Ghana, the 81st Member of World Skills, organized a two-day capacity-building workshop for Skill Organizing Teams (SOTs) in Accra. The workshop was organized to prepare SOTs for the Zonal Competition scheduled for May 2023.\n\nSkill #40 Graphic Design Technology is one of the priority skills for national development. The SOTs for Skill #40 who were in attendance at this workshop were Prof. Steve Kquofi (Chief Expert), Dr. Ismaila Moro (Deputy Chief Expert) from the Department of Communication Design, Mr. Lawson Quansah (Workshop Manager), and Michael Ato Essuman (Jury Head).\n\nClosing the workshop the SOTS were empowered to organise the Zonal Competition to the World Skills Standard.\n\nThe WorldSkills competitions are held at district, regional, national, and international levels to encourage creativity, innovation, and competitiveness among learners, and instructors.\n\nSource: Decode Website"),
  NewsItem(
    img: "assets/images/news_img4.png",
    date: "02 Jan 2023",
    title:
        "GASA Donates Media Production\nVests to the Department of\nCommunication Design",
    details:
        "The Graphic Arts Students’ Association recently donated 50 branded media production vests to the Department of Communication Design. The vests, which are emblazoned with the name of the department and the GASA logo, will be used by students in the department during studio practice and to help raise awareness of their studies and the work they do. In attendance were some senior members of the department to receive the items on behalf of the Head of Department.\n\nSpeaking on behalf of the association, the president, Master Benjamin Koomson said that the media production vests will help students connect and engage professionally with academic projects and media production work. He further added that, \"we believe that our support of media studio production is very important for the success and growth of students’ academics and career. We want to ensure that our members are equipped with the necessary skills to handle the changes that are happening in the media landscape today. It is great to see students taking active roles in their education and raising awareness of their studies\".\n\nSource: GASA",
  ),
  NewsItem(
    img: "assets/images/news_img5.png",
    date: "15 Jun 2023",
    title: "Winners of The Fourth Book Logo\nDesign Competition",
    details:
        "We announce the Winners of the The FOURTH BOOK Logo Design competition.\n\nThis contest was organized by The Fourth Book, a newly established company that seeks to empower Africans in the diaspora; in collaboration with the Department of Communication Design (DeCoDe), KNUST.\n\nFrom the many entries received, two submissions were selected.\n\nCongratulations to the winners:\n\n1st Place: Russell Gyamfi Boateng\n\n2nd Place: Vanessah Lanyoh\n\nThe Fourth Book + DeCoDe express appreciation to all participants for their creative logo design submissions.",
  ),
];

const List<Major> majors = [
  Major(title: "Advertising and Media"),
  Major(
    title: "Creative Multimedia",
    assetPath: "assets/images/major_overview_img2.png",
  ),
  Major(
    title: "Visual Communication",
    assetPath: "assets/images/major_overview_img3.png",
  ),
];

List<Question> questions = [
  const Question(
    text: "Psychology is defined as the scientific study of:",
    optionA: "a. people and things",
    optionB: "b. emotions and beliefs",
    optionC: "c. perception and religion",
    optionD: "d. mind and behaviour",
    correctAnswer: "d. mind and behaviour",
  ),
  const Question(
    text: "The word Psychologycome from ?",
    optionA: "a. Latin",
    optionB: "b.Spanish",
    optionC: "c.German",
    optionD: "d.Greek",
    correctAnswer: "a. Latin",
  ),
];
