# flutter_navigation

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Aplikasi ini bisa menjadi referensi pembelajaran dalam beberapa hal penting dalam penyusunan layout di Flutter.

## ListView
<code>
ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white)
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/dashboard');
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.dashboard),
                Text("Go To Dashboard")
              ],
            ),
          ),
          ),
          
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/pantai");
                }, 
                icon: const Icon(Icons.beach_access),
                label: const Text("Pantai")
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white)
              ),
                onPressed: (){
                  Navigator.pushNamed(context, "/gunung");
                }, 
                icon: const Icon(Icons.terrain),
                label: const Text("Gunung")
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/budaya");
                }, 
                icon: const Icon(Icons.museum),
                label: const Text("Budaya")
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/kuliner");
                }, 
                icon: const Icon(Icons.restaurant),
                label: const Text("Kuliner")
              ),
            ],
          )
        ],
      )
</code>
