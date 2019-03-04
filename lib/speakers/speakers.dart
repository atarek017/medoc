import 'package:flutter/material.dart';
import 'package:medoc19/customAlert.dart';
import 'package:medoc19/drawer.dart';

class TheGridView extends StatelessWidget {
  static String tag = 'speakers-page';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          drawer: contentDrawer(context, "speakers"),
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0.0,
            title: Text(
              "Speakers",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Container(
              padding: EdgeInsets.only(top: 30), child: buildGrid(context))),
    );
  }

  stakspostions(
      String name, String country, String work,String imagePath, String disc, context) {
    CustomAlert alert = new CustomAlert();
    double appHeight = MediaQuery.of(context).size.height;

    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 5,
          child: Image.asset(
            imagePath,
            width: 84.0,
            height: 84.0,
          ),
        ),
        Positioned(
          top: 84 + appHeight * 0.02,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
        ),
        Positioned(
          top: 84 + 2.5 * appHeight * 0.021,
          child: Text(
            country,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12.0,
            ),
          ),
        ),
        Positioned(
          height: 131.0,
          width: 84.0,
          child: InkWell(
            onTap: () {
              alert.showCustomAlert(
                context,
                Image.asset(
                  imagePath,
                  width: 84,
                  height: 84,
                ),
                work,
                name,
                disc,
              );
            },
          ),
        ),
      ],
    );
  }

  GridView buildGrid(context) {
    String pio1 =
        "Faculty of Medicine & Allied Health Sciences  King Abdulaziz University, Jeddah  M. B. B. Ch degree  House Officer (Internship) King Abdulaziz University Hospital " +
            " Jeddah, K.S.A. = 1987 ‐ 1988  Senior House Officer (Resident) King Abdulaziz University Hospital Jeddah, K.S.A. = 1988 ‐ 1990 Medical Registrar King Abdulaziz University Hospital " +
            "Jeddah, K.S.A. = 1990 ‐ 1992 Senior Medical Registrar King Abdulaziz University Hospital Jeddah, K.S.A. = 1992 ‐ 1994  Special Certificates, Place &Date: June 1987 MBBCh October 1992 MRCP (UK) June 2000 FRCP (E) ";

    String pio2 =
        "Saud AlSifri is currently Honorary Professor of Medicine & Endocrinology, Taif University, Consultant Endocrinologist and Diabetologist, Supervisor of Diabetes and Endocrine Specialist Center, and Chairman of the Endocrinology and Diabetes Department of the Al Hada and Taif Armed Forces Hospitals, Taif, Saudi Arabia. In 1994 Dr Alsifri joined residency program in the Department of Medicine of Al Hada Armed Forces Hospital. He completed a fellowship in 2002 in the Department of Endocrinology and Metabolism at King Faisal Specialist Hospital and Research Center, Riyadh, then in 2003 a further research fellowship in the Department of Endocrinology and Metabolism, Western Ontario, Canada and fellowship of American College of Endocrinology. Dr AlSifri is Chairing the Executive committee of Saudi Society for Endocrinology & Metabolism, Taif Region. He has written or contributed to over 20 research papers, peer-reviewer for three international journals in field of diabetes and endocrinology and has received several honours and awards including the International Donald Etzwiler Award in 2010 ";

    String pio3 =
        "2013 - presentDirector, PhD course in Biomedical Integrated Sciences and Bioethics, Campus Bio-Medico University of Rome (UCBM) 2003 - 2013Director, PhD course in Endocrinology and Metabolic Diseases, UCBM 2001 - presentDirector, Post-graduated School of Endocrinology and Diabetes, UCBM 2001 - presentFull professor of Endocrinology and Metabolic Diseases, UCBM 1998 - 2000Associate professor of Endocrinology and Metobolic Diseases, University of the Studies “Tor Vergata”, Rome 1991 - 1997Researcher, Sapienza Universiy of Rome 1979Specialisation diploma in Endocrinology, Sapienza University of Rome 1976 Degree in Medicine and Surgery, Sapienza University of Rome ";

    String pio4 =
        "Professor Mbanya has been actively involved with IDF for many years, notably as Chair of the IDF African Region (1994-2000), Vice-President of IDF (2000-2006), member of the Board of Management and Executive Board (1994-present) and Chair of the IDF Task Force on Insulin, Test Strips and Other Diabetes Supplies (1997-2006). Prof Mbanya also serves on several WHO advisory groups: the WHO African Advisory Committee on Health Research and Development, the WHO Expert Advisory Panel on Chronic Degenerative Diseases Diabetes, and the WHO Committee on Classification and Diagnosis of Diabetes. In 2004 he received the Harold Rifkin Award for Distinguished International Service in the Cause of Diabetes";

    String pio5 = "Ralph A. DeFronzo, MD, is Professor of Medicine and Chief of the Diabetes Division at the University of Texas Health Science Center and the Deputy Director of the Texas Diabetes Institute, San Antonio, Texas. Dr. DeFronzo is a graduate of Yale University (BS) and Harvard Medical School (MD) and did his training in Internal Medicine at the Johns Hopkins Hospital. He completed fellowships in endocrinology at the National Institutes of Health and Baltimore City Hospitals and in Nephrology at the Hospital of the University of Pennsylvania. Subsequently, he joined the faculty at the Yale University School of Medicine (1975-88) as an Assistant/Associate Professor. From 1988 to present Dr. DeFronzo has been Professor of Medicine and Chief of the Diabetes Division at the University of Texas Health Science Center at San Antonio. He also serves as the Deputy Director of the Texas Diabetes Institute.";
    
    String pio6="Raffaella Buzzetti, Italian endocrinologist, educator. Certified endocrinology specialist University Rome, 1987, genetics specialist 1992. Project grant, Non Insulin Requiring Autoimmune Diabetes, Internal Medicine fellow, Sapienza University, 1985-1986, fellow, St. Bartholomew’s Hospital, London, 1987-1990, grant, Italian Ministry University and Research, 2005.";
    return GridView.count(
      crossAxisCount: 2,

      mainAxisSpacing: 35.0,
      crossAxisSpacing: 5.0,
      shrinkWrap: true,
      primary: false,

      //padding: const EdgeInsets.all(5.0),

      children: <Widget>[
       
      ],
    );
  }
}
