IconButton(
              tooltip: "Download",
              key: Key('DownloadButton'),
              icon: Icon(
                Icons.download_rounded,
              ),
              onPressed: () {
                Future<void> _showMyDialog() async {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(20.0)), //this right here
                          child: Container(
                            height: MediaQuery.of(context).size.height*.7,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(StringResources.resumeBuilderText,
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 5),
                                        child: Material(
                                          color: Colors.white,
                                          shape: CircleBorder(),
                                          elevation: 4,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(20),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(11.0),
                                              child: Icon(
                                                Icons.close,
                                                key: Key('jobDetailsApplyCloseButton'),
                                                size: 17,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(StringResources.resumeBuilderTemplateText,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    height: 200,
                                    width: 150,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.grey[200]
                                          ),
                                        ),
                                        Container(
                                          height: 200,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.grey[200]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // ListView(
                                  //   scrollDirection: Axis.horizontal,
                                  //   children: [
                                  //     Container(
                                  //       height: 150,
                                  //       width: 100,
                                  //       decoration: BoxDecoration(
                                  //         borderRadius: BorderRadius.circular(10),
                                  //         color: Colors.grey[200]
                                  //       ),
                                  //     ),
                                  //     Container(
                                  //       height: 150,
                                  //       width: 100,
                                  //       decoration: BoxDecoration(
                                  //           borderRadius: BorderRadius.circular(10),
                                  //           color: Colors.grey[200]
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                  // return showDialog<void>(
                  //   context: context,
                  //   barrierDismissible: false, // user must tap button!
                  //   builder: (BuildContext context) {
                  //     return AlertDialog(
                  //       title: Text('Resume Builder'),
                  //       content: SingleChildScrollView(
                  //         child: ListBody(
                  //           children: <Widget>[
                  //             Text('Select any template from the following and apply to create a lookrative resume'),
                  //           ],
                  //         ),
                  //       ),
                  //       actions: <Widget>[
                  //         TextButton(
                  //           child: Text('Approve'),
                  //           onPressed: () {
                  //             Navigator.of(context).pop();
                  //           },
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // );
                }
                _showMyDialog();
              },
            ),
