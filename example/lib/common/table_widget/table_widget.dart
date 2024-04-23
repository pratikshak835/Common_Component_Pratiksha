import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/extensions.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter_example/common/table_widget/table_row_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableWithRadius extends StatelessWidget {
  const TableWithRadius({super.key, required this.rowsJsonData});

  final List rowsJsonData;

  @override
  Widget build(BuildContext context) {
    return DataTable(
        border: TableBorder.all(
            borderRadius: 8.borderRadius, color: AppColors.FFE0E0E0),
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.white),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => AppColors.FFF5F5F5),
        dividerThickness: 1.0,
        columns: const [
          DataColumn(
              label: CustomText.bodyS(
            text: 'Name',
            fontWeight: CustomFontWeight.black,
            letterSpacing: -0.3,
          )),
          DataColumn(
              label: CustomText.bodyS(
            text: 'Required',
            fontWeight: CustomFontWeight.black,
            letterSpacing: -0.3,
          )),
          DataColumn(
              label: CustomText.bodyS(
            text: 'Description',
            fontWeight: CustomFontWeight.black,
            letterSpacing: -0.3,
          )),
          DataColumn(
              label: CustomText.bodyS(
            text: 'Default',
            fontWeight: CustomFontWeight.black,
            letterSpacing: -0.3,
          )),
        ],
        rows: getTableRows(context));
  }

  List<DataRow> getTableRows(BuildContext context) {
    List<TableRowModel> avatarList =
        rowsJsonData.map((item) => TableRowModel.fromJson(item)).toList();
    return avatarList
        .map((element) => getTableRowUI(element, context))
        .toList();
  }

  DataRow getTableRowUI(TableRowModel tableRowData, BuildContext context) {
    return DataRow(cells: [
      DataCell(
        Text.rich(
          TextSpan(text: tableRowData.name),
          style: GoogleFonts.sourceCodePro(
            color: AppColors.FF092885,
            fontSize: 12,
          ),
        ),
      ),
      DataCell(
        CustomText.bodyS(
          text: tableRowData.required,
          color: AppColors.FF141414,
        ),
      ),
      DataCell(
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: 200, maxWidth: MediaQuery.sizeOf(context).width * 0.6),
          child: CustomText.bodyS(
            text: tableRowData.description,
            color: AppColors.FF092885,
            size: 14,
            maxLines: 10,
          ),
        ),
      ),
      DataCell(
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text.rich(
            TextSpan(text: tableRowData.defaultVal),
            style: GoogleFonts.sourceCodePro(
              color: AppColors.FF141414,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ]);
  }
}
