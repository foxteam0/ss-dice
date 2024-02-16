# SS-Dice

SS-Dice, GTA V için FiveM platformunda bir zar oyununu simüle eder. Oyuncular, belirli bir öğeyi kullanarak bir zar atabilir ve sonucu öğrenebilirler.

## Başlangıç

Bu talimatlar, projenin yerel makinenizde nasıl çalıştırılacağı hakkında size yardımcı olacaktır. Daha ayrıntılı açıklamalar için [Video](https://youtu.be/LYFhqVh9VOs) bölümüne bakınız.

### Gereksinimler

Bu projeyi çalıştırmak için aşağıdaki yazılımlara ihtiyacınız vardır:

- [FiveM](https://fivem.net/)
- [QBCore Framework](https://github.com/qbcore-framework/qbcore-framework)

### Kurulum

1. Proje dosyalarını indirin veya klonlayın:

    ```bash
    git clone https://github.com/foxteam0/ss-dice.git
    ```

2. `server.cfg` dosyasını düzenleyin ve gerekli kaynakları ekleyin:

    ```ini
    ensure ss-dice
    ```

3. Sunucunuzu başlatın ve oyuna katılın.

## Kullanım

Oyun içinde bir zar atmak için aşağıdaki adımları izleyin:

1. Oyuncu, envanterinde bulunan bir "zar" öğesini kullanır.
2. qb-core>shared>İtems i açın ve ekleyin :

    ```
   ['zar'] 			 	 	 = {['name'] = 'zar', 				['label'] = 'Zar', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'zar.png', 			['unique'] = false,     ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bildiğimiz Zar'},	
	
    ```

3. qb-inventory>html>images fotoyu ekleyin.

![zar](https://github.com/foxteam0/ss-dice/assets/133250817/70f2d5c5-c500-4ec1-8297-8c1f33363ee0)


## Katkıda Bulunma

Bu projeye katkıda bulunmak istiyorsanız, lütfen [CONTRIBUTING.md](CONTRIBUTING.md) dosyasını okuyun.

## Lisans

Bu proje [MIT Lisansı](LICENSE) altında lisanslanmıştır.

## İletişim

E-posta: serdarsoysal3306@gmail.com

Proje Linki: [GitHub](https://github.com/foxteam0/ss-dice)

İNG

# SS-Dice

SS-Dice simulates a dice game for GTA V on the FiveM platform. Players can roll a dice using a specific item and find out the result.

## Getting Started

These instructions will help you to run the project on your local machine. For more detailed explanations, please refer to the [Video](https://youtu.be/LYFhqVh9VOs) section.

### Requirements

You need the following software to run this project:

- [FiveM](https://fivem.net/)
- [QBCore Framework](https://github.com/qbcore-framework/qbcore-framework)

### Installation

1. Download or clone the project files:

    ```bash
    git clone https://github.com/foxteam0/ss-dice.git
    ```

2. Edit the `server.cfg` file and add the necessary resources:

    ```ini
    ensure ss-dice
    ```

3. Start your server and join the game.

## Usage

Follow these steps to roll a dice in-game:

1. The player uses an item called "dice" from their inventory.
2. Open qb-core>shared>Items and add:

    ```
   ['zar'] 		 = {['name'] = 'zar', 			['label'] = 'Zar', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'dice.png', 			['unique'] = false,     ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A regular dice.'},	
	
    ```

3. Add the image in qb-inventory>html>images.

![dice](https://github.com/foxteam0/ss-dice/assets/133250817/70f2d5c5-c500-4ec1-8297-8c1f33363ee0)

## Contributing

If you want to contribute to this project, please read the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

Email: serdarsoysal3306@gmail.com

Project Link: [GitHub](https://github.com/foxteam0/ss-dice)
