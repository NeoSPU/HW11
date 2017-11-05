//
//  ViewController.swift
//  HW11_1
//
//  Created by Alex Neo on 05.11.2017.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    private var datasource: [String: [Animal]] = [:]
    private var allAnimals: [Animal] = []
    private var animalKeys: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        generateData()
    }
    
    private func generateData() {
        allAnimals.append(Animal(classOfAnimal: "Mammals", nameOfAnimal: "Brown Bear", infoListOfAnimal: "The brown bear (Ursus arctos) is a large bear with the widest distribution of any living ursid.[2] The species is distributed across much of northern Eurasia and North America.[1][2] It is one of the two largest terrestrial carnivorans alive today, rivaled in body size only by its close cousin, the polar bear (Ursus maritimus), which is much less variable in size and averages larger due to this.[3][4][5] en, C., Darling, L. M., & Archibald, W. R. (1990). The status and conservation of the bears of the world (No. 2). International Association for Bear Research and Management.", imageOfAnimal: #imageLiteral(resourceName: "brown_bear")))
        allAnimals.append(Animal(classOfAnimal: "Mammals", nameOfAnimal: "Deer", infoListOfAnimal: "Deer (singular and plural) are the ruminant mammals forming the family Cervidae. The two main groups are the Cervinae, including the muntjac, the fallow deer and the chital, and the Capreolinae, including the elk, reindeer (caribou), the Western roe deer, and the moose. Female reindeer, and male deer of all species (except the Chinese water deer), grow and shed new antlers each year. In this they differ from permanently horned antelope, which are in the same order, Artiodactyla.", imageOfAnimal: #imageLiteral(resourceName: "deer")))
        allAnimals.append(Animal(classOfAnimal: "Mammals", nameOfAnimal: "Snow Leopard", infoListOfAnimal: "The snow leopard or ounce (Panthera uncia) is a large cat native to the mountain ranges of Central and South Asia. It is listed as Vulnerable on the IUCN Red List of Threatened Species because the global population is estimated to number less than 10,000 mature individuals and decline about 10% in the next 23 years. As of 2016, the global population was estimated at 4,500 to 8,745 mature individuals.", imageOfAnimal: #imageLiteral(resourceName: "snow_leopard")))
        
        allAnimals.append(Animal(classOfAnimal: "Birds", nameOfAnimal: "Eagle", infoListOfAnimal: "Eagle is a common name for many large birds of prey of the family Accipitridae; it belongs to several groups of genera that are not necessarily closely related to each other.\n Most of the 60 species of eagles are from Eurasia and Africa.[1] Outside this area, just 14 species can be found – two in North America, nine in Central and South America, and three in Australia.", imageOfAnimal: #imageLiteral(resourceName: "eagle")))
        allAnimals.append(Animal(classOfAnimal: "Birds", nameOfAnimal: "Gavia Arctica", infoListOfAnimal: "The black-throated loon (Gavia arctica), also known as the Arctic loon and the black-throated diver, is a migratory aquatic bird found in the northern hemisphere, primarily breeding in freshwater lakes in northern Europe and Asia. It winters along sheltered, ice-free coasts of the north-east Atlantic Ocean and the eastern and western Pacific Ocean. This loon was first described by Carl Linnaeus in 1758. It has two subspecies including the nominate. It was previously considered to be the same species as the Pacific loon, of which it is traditionally considered to be a sister species, although this is debated. In a study that used mitochondrial and nuclear intron DNA, the black-throated loon was found to be sister to a clade consisting of the Pacific loon and two sister species, the common loon and the yellow-billed loon.", imageOfAnimal: #imageLiteral(resourceName: "gavia_arctica")))
        allAnimals.append(Animal(classOfAnimal: "Birds", nameOfAnimal: "Great Crested Grebe", infoListOfAnimal: "The great crested grebe (Podiceps cristatus) is a member of the grebe family of water birds noted for its elaborate mating display. The scientific name comes from Latin. Podiceps is from podicis, \"vent\" and pes, \"foot\", and is a reference to the placement of a grebe's legs towards the rear of its body, and the species name, cristatus means \"crested\".", imageOfAnimal: #imageLiteral(resourceName: "great_crested_grebe")))
        allAnimals.append(Animal(classOfAnimal: "Birds", nameOfAnimal: "Heron", infoListOfAnimal: "The herons are the long-legged freshwater and coastal birds in the family Ardeidae, with 64 recognised species, some of which are referred to as egrets or bitterns rather than herons. Members of the genera Botaurus and Ixobrychus are referred to as bitterns, and, together with the zigzag heron or zigzag bittern in the monotypic genus Zebrilus, form a monophyletic group within the Ardeidae. Egrets are not a biologically distinct group from the herons, and tend to be named differently because they are mainly white or have decorative plumes. Although egrets have the same build as herons, they tend to be smaller. Herons, by evolutionary adaptation, have long beaks.", imageOfAnimal: #imageLiteral(resourceName: "heron")))
        allAnimals.append(Animal(classOfAnimal: "Birds", nameOfAnimal: "Kingfisher", infoListOfAnimal: "Kingfishers or Alcedinidae are a family of small to medium-sized, brightly colored birds in the order Coraciiformes. They have a cosmopolitan distribution, with most species found outside the Americas. The family contains 114 species and is divided into three subfamilies: river kingfishers (Alcedininae), tree kingfishers (Halcyoninae), and water kingfishers (Cerylinae). All kingfishers have large heads, long, sharp, pointed bills, short legs, and stubby tails. Most species have bright plumage with only small differences between the sexes. Most species are tropical in distribution, and a slight majority are found only in forests. They consume a wide range of prey usually caught by swooping down from a perch. While kingfishers are usually thought to live near rivers and eat fish, many species live away from water and eat small invertebrates. Like other members of their order, they nest in cavities, usually tunnels dug into the natural or artificial banks in the ground. Some kingfishers nest in arboreal termite nests. A few species, principally insular forms, are threatened with extinction. In Britain, the word \"kingfisher\" normally refers to the common kingfisher.", imageOfAnimal: #imageLiteral(resourceName: "kingfisher")))
        allAnimals.append(Animal(classOfAnimal: "Birds", nameOfAnimal: "Pheasant", infoListOfAnimal: "Pheasants (/ˈfɛzənt/) are birds of several genera within the subfamily Phasianinae, of the family Phasianidae in the order Galliformes. The family's native range is restricted to Asia.\nPheasants are characterised by strong sexual dimorphism, males being highly decorated with bright colors and adornments such as wattles. Males are usually larger than females and have longer tails. Males play no part in rearing the young. Pheasants typically eat seeds and some insects.\nThe best-known is the common pheasant, which is widespread throughout the world, in introduced feral populations and in farm operations. Various other pheasant species are popular in aviaries, such as the golden pheasant (Chrysolophus pictus).", imageOfAnimal: #imageLiteral(resourceName: "pheasant")))
        
        allAnimals.append(Animal(classOfAnimal: "Pisces", nameOfAnimal: "Centropyge", infoListOfAnimal: "Centropyge is a genus of fish in the family Pomacanthidae found in the Atlantic, Indian and Pacific Ocean.[1] These species do not exceed 15 cm in length and live in haremic structures with one dominant male and multiple females.[1] Although it is hard to identify their gender; females are often shorter and more round finned. Like many other reef fish and all marine angelfish, this genus is protogynous hermaphrodite, meaning that they start their adult lives as females and the dominant individual in a group can change to a male within days. A reversal of this sex change is possible if the social status of the individual changes, it is however a process that requires much more time.", imageOfAnimal: #imageLiteral(resourceName: "centropyge")))
        allAnimals.append(Animal(classOfAnimal: "Pisces", nameOfAnimal: "Dactylopterus Volitans", infoListOfAnimal: "Dactylopterus volitans is widely distributed and locally abundant where it occurs in a variety of habitats. Although there is some indication of localized impacts due to its occurrence as bycatch, however, this is not considered a major threat to its global population. It is therefore listed as Least Concern.\nIn the Gulf of Mexico, this species is widely distributed and locally abundant where it occurs on a variety of substrata. Although it is taken as bycatch, it also lives in habitats that are not impacted by trawls. There are no known major threats, therefore, it is listed as Least Concern.", imageOfAnimal: #imageLiteral(resourceName: "dactylopterus_volitans")))
        allAnimals.append(Animal(classOfAnimal: "Pisces", nameOfAnimal: "Heniochus", infoListOfAnimal: "Heniochus is a genus of butterflyfishes native to the Indo-Pacific. Though very similar in appearance to the Moorish idol (Zanclus cornutus), the members of this genus are not closely related to it.", imageOfAnimal: #imageLiteral(resourceName: "heniochus")))
        allAnimals.append(Animal(classOfAnimal: "Pisces", nameOfAnimal: "Peacock Blenny", infoListOfAnimal: "Salaria pavo, the peacock blenny, is a species of combtooth blenny found in the eastern Atlantic coast from France to Morocco; also in the Mediterranean and Black seas, introduced to the Suez Canal. This species reaches a length of 13 centimetres (5.1 in) TL.", imageOfAnimal: #imageLiteral(resourceName: "peacock_blenny")))
        allAnimals.append(Animal(classOfAnimal: "Pisces", nameOfAnimal: "Pomacanthus Imperator", infoListOfAnimal: "The emperor angelfish (Pomacanthus imperator) is a species of marine angelfish. It is a reef-associated fish, native to the Indian and Pacific Oceans, from the Red Sea to Hawaii and the Austral Islands. This species is generally associated with stable populations and faces no major threats of extinction.[1] It is a favorite of photographers, artists, and aquarists because of its unique, brilliant pattern of coloration.", imageOfAnimal: #imageLiteral(resourceName: "pomacanthus_imperator")))
        
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Butterfly", infoListOfAnimal: "Butterflies are insects in the macrolepidopteran clade Rhopalocera from the order Lepidoptera, which also includes moths. Adult butterflies have large, often brightly coloured wings, and conspicuous, fluttering flight. The group comprises the large superfamily Papilionoidea, which contains at least one former group, the skippers (formerly the superfamily \"Hesperioidea\") and the most recent analyses suggest it also contains the moth-butterflies (formerly the superfamily \"Hedyloidea\"). Butterfly fossils date to the Paleocene, which was about 56 million years ago.\nButterflies have the typical four-stage insect life cycle. Winged adults lay eggs on the food plant on which their larvae, known as caterpillars, will feed. The caterpillars grow, sometimes very rapidly, and when fully developed, pupate in a chrysalis. When metamorphosis is complete, the pupal skin splits, the adult insect climbs out, and after its wings have expanded and dried, it flies off. Some butterflies, especially in the tropics, have several generations in a year, while others have a single generation, and a few in cold locations may take several years to pass through their whole life cycle.\nButterflies are often polymorphic, and many species make use of camouflage, mimicry and aposematism to evade their predators. Some, like the monarch and the painted lady, migrate over long distances. Many butterflies are attacked by parasites or parasitoids, including wasps, protozoans, flies, and other invertebrates, or are preyed upon by other organisms. Some species are pests because in their larval stages they can damage domestic crops or trees; other species are agents of pollination of some plants. Larvae of a few butterflies (e.g., harvesters) eat harmful insects, and a few are predators of ants, while others live as mutualists in association with ants. Culturally, butterflies are a popular motif in the visual and literary arts.", imageOfAnimal: #imageLiteral(resourceName: "butterfly")))
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Dragonfly", infoListOfAnimal: "A dragonfly is an insect belonging to the order Odonata, infraorder Anisoptera (from Greek ἄνισος anisos, \"uneven\" and πτερόν pteron, \"wing\", because the hindwing is broader than the forewing). Adult dragonflies are characterized by large, multifaceted eyes, two pairs of strong, transparent wings, sometimes with coloured patches, and an elongated body. Dragonflies can be mistaken for the related group, damselflies (Zygoptera), which are similar in structure, though usually lighter in build; however, the wings of most dragonflies are held flat and away from the body, while damselflies hold the wings folded at rest, along or above the abdomen. Dragonflies are agile fliers, while damselflies have a weaker, fluttery flight. Many dragonflies have brilliant iridescent or metallic colours produced by structural coloration, making them conspicuous in flight. An adult dragonfly's compound eyes have nearly 24,000 ommatidia each.", imageOfAnimal: #imageLiteral(resourceName: "dragonfly")))
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Fly", infoListOfAnimal: "True flies are insects of the order Diptera, the name being derived from the Greek δι- di- \"two\", and πτερόν pteron \"wings\". Insects of this order use only a single pair of wings to fly, the hindwings having evolved into advanced mechanosensory organs known as halteres, which act as high speed sensors of rotational movement and allow dipterans to perform advanced aerobatics.[1] Diptera is a large order containing an estimated 1,000,000 species including horse-flies,[a] crane flies, hoverflies and others, although only about 125,000 species have been described.", imageOfAnimal: #imageLiteral(resourceName: "fly")))
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Ladybag", infoListOfAnimal: "Coccinellidae (/ˌkɒksɪˈnɛlɪdiː/)[3] is a widespread family of small beetles ranging from 0.8 to 18 mm (0.03 to 0.71 inches).[4]\nThey are commonly yellow, orange, or red with small black spots on their wing covers, with black legs, heads and antennae. However such colour patterns vary greatly. For example, a minority of species, such as Vibidia duodecimguttata, a twelve-spotted species, have whitish spots on a brown background. Coccinellids are found worldwide, with over 6,000 species described.[5][6]\nCoccinellids are known as ladybugs in North America, and ladybirds in Britain and other parts of the English-speaking world. Entomologists widely prefer the names ladybird beetles or lady beetles as these insects are not classified as true bugs.", imageOfAnimal: #imageLiteral(resourceName: "ladybug")))
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Mantis", infoListOfAnimal: "Mantises are an order (Mantodea) of insects that contains over 2,400 species in about 430 genera in 15 families. The largest family is the Mantidae (\",mantids\"). Mantises are distributed worldwide in temperate and tropical habitats. They have triangular heads with bulging eyes supported on flexible necks. Their elongated bodies may or may not have wings, but all Mantodea have forelegs that are greatly enlarged and adapted for catching and gripping prey; their upright posture, while remaining stationary with forearms folded, has led to the common name praying mantis.", imageOfAnimal: #imageLiteral(resourceName: "mantis")))
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Mole", infoListOfAnimal: "Lepidoptera (/ˌlɛpɪˈdɒptərə/ lep-i-DOP-tər-ə) is an order of insects that includes butterflies and moths (both are called lepidopterans). About 180,000 species of the Lepidoptera are described, in 126 families[1] and 46 superfamilies,[2] 10% of the total described species of living organisms.[2][3] It is one of the most widespread and widely recognizable insect orders in the world.[4] The Lepidoptera show many variations of the basic body structure that have evolved to gain advantages in lifestyle and distribution. Recent estimates suggest the order may have more species than earlier thought,[5] and is among the four most speciose orders, along with the Hymenoptera, Diptera, and Coleoptera.", imageOfAnimal: #imageLiteral(resourceName: "mole")))
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Spider", infoListOfAnimal: "Spiders (order Araneae) are air-breathing arthropods that have eight legs and chelicerae with fangs that inject venom. They are the largest order of arachnids and rank seventh in total species diversity among all other orders of organisms.[2] Spiders are found worldwide on every continent except for Antarctica, and have become established in nearly every habitat with the exceptions of air and sea colonization. As of November 2015, at least 45,700 spider species, and 113 families have been recorded by taxonomists.[1] However, there has been dissension within the scientific community as to how all these families should be classified, as evidenced by the over 20 different classifications that have been proposed since 1900.", imageOfAnimal: #imageLiteral(resourceName: "spider")))
        allAnimals.append(Animal(classOfAnimal: "Insects", nameOfAnimal: "Wasp", infoListOfAnimal: "A wasp is any insect of the order Hymenoptera and suborder Apocrita that is neither a bee nor an ant. The Apocrita have a common evolutionary ancestor and form a clade; wasps as a group do not form a clade, but are paraphyletic with respect to bees and ants.\nThe most commonly known wasps, such as yellowjackets and hornets, are in the family Vespidae and are eusocial, living together in a nest with an egg-laying queen and non-reproducing workers. Eusociality is favoured by the unusual haplodiploid system of sex determination in Hymenoptera, as it makes sisters exceptionally closely related to each other. However, the majority of wasp species are solitary, with each adult female living and breeding independently. Many of the solitary wasps are parasitoidal, meaning that they raise their young by laying eggs on or in other insects (any life stage from egg to adult). Unlike true parasites, the wasp larvae eventually kill their hosts. Solitary wasps parasitize almost every pest insect, making wasps valuable in horticulture for biological pest control of species such as whitefly in tomatoes and other crops.\nWasps first appeared in the fossil record in the Jurassic, and diversified into many surviving superfamilies by the Cretaceous. They are a successful and diverse group of insects with tens of thousands of described species; wasps have spread to all parts of the world except for the polar regions. The largest social wasp is the Asian giant hornet, at up to 5 centimetres (2.0 in) in length; among the largest solitary wasps is a group of species known as tarantula hawks, along with the giant scoliid of Indonesia (Megascolia procer). The smallest wasps are solitary chalcid wasps in the family Mymaridae, including the world's smallest known insect, with a body length of only 0.139 mm (0.0055 in), and the smallest known flying insect, only 0.15 mm (0.0059 in) long.", imageOfAnimal: #imageLiteral(resourceName: "wasp")))
        
        for index in allAnimals {
            var newAnimalsClass = datasource[index.classOfAnimal] ?? []
            newAnimalsClass.append(index)
            datasource[index.classOfAnimal] = newAnimalsClass
        }
        animalKeys = Array(datasource.keys)
    }

    private func getAnimal(for indexPath: IndexPath) -> Animal? {
        let key = animalKeys[indexPath.section]
        let animalForSection = datasource[key]
        return animalForSection?[indexPath.row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showToDetail",
            let destVC = segue.destination as? DetailsViewController else { return }
        guard let cell = sender as? UITableViewCell else { return }
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        guard let item = getAnimal(for: indexPath) else { return }
        destVC.animals = item
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return datasource.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let key = animalKeys[section]
        let animalForSection = datasource[key] ?? []
        return animalForSection.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? AnimalsTableViewCell else {
            fatalError("Error: Cell has wrong type!")
        }
        guard let item = getAnimal(for: indexPath) else {
            fatalError("Error: Animal has wrong index path")
        }
        cell.update(title: item.nameOfAnimal, image: item.imageOfAnimal)
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return animalKeys[section]
    }
}
