// GELECEK ISTIFADE UCHUN.

// import 'package:flutter/material.dart';
// import 'package:kvebek/application/bois/boi_watcher/boi_watcher_bloc.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// class Constants {
//   static const String all = 'Hamı';
//   static const String out = 'Çöldəkilər';

//   static const List<String> choices = <String>[
//     all,
//     out,
//   ];
// }

// class UncompletedSwitch extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     bool toggleAll = true;
//     bool toggleOut = false;
//     return PopupMenuButton(
//       padding: const EdgeInsets.only(top: 5),
//       icon: const Icon(Icons.sort_outlined),
//       itemBuilder: (BuildContext context) {
//         return Constants.choices.map((String choice) {
//           return PopupMenuItem<String>(
//             value: choice,
//             child: Text(choice),
//           );
//         }).toList();
//       },
//       onSelected: (choice) {
//         // final toggleAll = useState(false);
//         // final toggleOut = useState(false);

//         if (choice == Constants.all && toggleAll == false) {
//           toggleAll = true;
//           toggleOut = false;
//           context
//               .read<BoiWatcherBloc>()
//               .add(const BoiWatcherEvent.watchAllStarted());
//         } else if (choice == Constants.out && toggleOut == false) {
//           toggleOut = true;
//           toggleAll = false;
//           context
//               .read<BoiWatcherBloc>()
//               .add(const BoiWatcherEvent.watchOutsideStarted());
//         }
//       },
//     );
//   }
// }
