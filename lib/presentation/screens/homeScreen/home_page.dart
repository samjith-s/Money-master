import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/application/transactions/transactions_bloc.dart';
import 'package:money_manager/application/user_details/user_details_bloc.dart';
// import 'package:money_manager/category_db/category_models.dart';
// import 'package:money_manager/screens/Statiticsscreen/pie_chart_functions.dart';
// import 'package:money_manager/transaction_db/transaction_db_functions.dart';
// import 'package:money_manager/transaction_db/transaction_db_model.dart';
import 'package:sizer/sizer.dart';
// import '../../category_db/category_db_functions.dart';
// import '../../config/constant_colors.dart';
// import '../../../category_db/category_db_functions.dart';
import '../../../application/allrounder/allrounder_bloc.dart';
import '../../../application/categories/categories_bloc.dart';
import '../../../config/constant_colors.dart';
// import '../../../domain/categories/model/category_db_model.dart';
// import '../../../domain/transactions/model/transaction_db_model.dart';
// import '../../transaction_db/transaction_db_functions.dart';
// import '../../transaction_db/transaction_db_model.dart';
// import '../../user_db/user_db_fuctions.dart';
// import '../../value_notifiers.dart';
import '../Statiticsscreen/pie_chart_functions.dart';
// import '../detailsPage/transaction_details_page.dart';
// import 'homeScreenCustomWidgets/alltime_transactionlist_widget.dart';
// import 'homeScreenCustomWidgets/filter_result_list_widget.dart';
// import 'homeScreenCustomWidgets/home_screen_widgets.dart';
// import 'homeScreenCustomWidgets/nothing_to_show_widget.dart';
// import 'homeScreenCustomWidgets/nothing_to_show_widget.dart';
import 'widgets/alltime_transactionlist_widget.dart';
import 'widgets/date_picker_widget.dart';
import 'widgets/filter_result_list_widget.dart';
import 'widgets/home_screen_widgets.dart';
import 'widgets/image_name_search_row_widget.dart';
import 'widgets/nothing_to_show_widget.dart';
import 'widgets/period_select_dropdown_widget.dart';

double width = 100.w;
double height = 100.h;

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<TransactionsBloc>(context)
          .add(const TransactionsEvent.getAllTransactions());
      BlocProvider.of<UserDetailsBloc>(context)
          .add(const UserDetailsEvent.getUser());
      BlocProvider.of<CategoriesBloc>(context)
          .add(const CategoriesEvent.seperateCategories());
      BlocProvider.of<AllrounderBloc>(context).add(
          const AllrounderEvent.changeDateHintvisibility(visibility: true));
    });

   // getUsedCategories();
    return SafeArea(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(height: height * .3789),
              Container(
                padding:
                    EdgeInsets.only(top: height * .0132, left: 20, right: 20),
                width: width,
                height: height * .2792,
                child: Column(
                  children: [
                    //Row with image name and search button
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: ImageNameRow(),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          //dropdown for periods like monthly weekly
                          PeriodSelectDropdown(),
                          //container with datepicker and show date
                          DaitPickerContainer()
                        ],
                      ),
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  color: appBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
              ),
              //first white container with account balance and total income and total expence
              const BalanceShowContainer()
            ],
          ),
          //transaction list start here
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .05556),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Transactions history',
                  style: TextStyle(
                    fontFamily: 'AnticSlab',
                    fontSize: 17,
                    color: Color.fromARGB(255, 148, 144, 144),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: width * .88888,
                  margin: EdgeInsets.only(
                    top: height * .0132,
                  ),
                  height: height * .47,
                  decoration: const BoxDecoration(
                    color: Color(0xFF272934),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: BlocBuilder<TransactionsBloc, TransactionsState>(
                          builder: (context, state) {
                            return state.showFilterList
                                ? state.filteredList.isEmpty
                                    ? const NothingTextWidget()
                                    : FilterResultList(
                                        filteredList: state.filteredList,
                                      )
                                : state.transactionsList.isEmpty
                                    ? const NothingTextWidget()
                                    : AllTimeTransactionList(
                                        transactionsList:
                                            state.transactionsList,
                                      );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

parseDate(DateTime date) {
  List pdate = DateFormat('MMMd').format(date).split(' ');
  return '${pdate.last} ${pdate.first}';
}
