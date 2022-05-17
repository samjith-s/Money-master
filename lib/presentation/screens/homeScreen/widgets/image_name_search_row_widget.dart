import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/allrounder/allrounder_bloc.dart';
import '../../../../application/transactions/transactions_bloc.dart';
import '../../../../application/user_details/user_details_bloc.dart';
import '../../../common_widgets.dart';
import '../home_page.dart';

class ImageNameRow extends StatelessWidget {
  const ImageNameRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        return BlocBuilder<AllrounderBloc, AllrounderState>(
          builder: (context, allState) {
            return Row(
              children: [
                UserProfilePicture(
                  image: state.model.image!,
                ),
                allState.showHomeScreenSearchBar == false
                    ? Expanded(
                        child: SizedBox(
                          height: height * .09308,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hi ${state.model.name} ✨',
                                style: const TextStyle(
                                  fontSize: 23,
                                  fontFamily: 'Rokkitt-Thin',
                                  color: Color(0xFF17191f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  BlocProvider.of<AllrounderBloc>(context).add(
                                    const AllrounderEvent
                                        .changeSearchBarVisibility(
                                      visibility: true,
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.search,
                                  size: 25,
                                  color: Color(0xFF17191f),
                                ),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              )
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: SizedBox(
                                width: width * .4611,
                                height: height * .06648,
                                child: TextField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  onChanged: (value) async {
                                    BlocProvider.of<TransactionsBloc>(context)
                                        .add(
                                      TransactionsEvent.searchTransaction(
                                          searchKey: value),
                                    );
                                  },
                                  cursorColor: Colors.black,
                                  cursorWidth: 1.5,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search transaction',
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 101, 100, 100),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                BlocProvider.of<AllrounderBloc>(context).add(
                                  const AllrounderEvent
                                      .changeSearchBarVisibility(
                                    visibility: false,
                                  ),
                                );
                              },
                              child: const Text(
                                'search',
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
              ],
            );
          },
        );
      },
    );
  }
}
