import 'dart:html';

import 'package:react/react.dart' as react;
import 'package:react/react_client.dart';
import 'package:react/react_client/react_interop.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:dart_mui/dart_mui.dart';

main() {
  react_dom.render(SignIn({}), querySelector('#content'));
}

class _SignIn extends react.Component2 {
  // const classes = useStyles();
  @override
  dynamic render() => Container(
      {'component': 'main', 'maxWidth': 'xs'},
      CssBaseline({}),
      react.div(
          {
            // className: classes.paper
          },
          Avatar({
            // className: classes.avatar
          }
              //, LockOutlined({})
              ),
          Typography({'component': 'h1', 'variant': 'h5'}, 'Sign in'),
          react.form(
              {
                // className: classes.form,
                'noValidate': true
              },
              TextField({
                'variant': 'outlined',
                'margin': 'normal',
                'required': true,
                'fullWidth': true,
                'id': 'email',
                'label': 'Email Address',
                'name': 'email',
                'autoComplete': 'email',
                'autoFocus': true
              }),
              TextField({
                'variant': 'outlined',
                'margin': 'normal',
                'required': true,
                'fullWidth': true,
                'name': 'password',
                'label': 'Password',
                'type': 'password',
                'id': 'password',
                'autoComplete': 'current-password'
              }),
              FormControlLabel({
                'control': Checkbox({'value': 'remember', 'color': 'primary'}),
                'label': 'Remember me'
              }),
              Button({
                'type': 'submit',
                'fullWidth': true,
                'variant': 'contained',
                'color': 'primary',
                // 'className': classes.submit
              }, 'Sign In'),
              Grid(
                  {'container': true},
                  Grid(
                      {'item': true, 'xs': true},
                      Link({'href': '#', 'variant': 'body2'},
                          'Forgot password?')),
                  Grid(
                      {'item': true},
                      Link({'href': '#', 'variant': 'body2'},
                          "Don't have an account? Sign Up"))))),
      Box({'mt': 8}, Copyright({})));
}

final SignIn = react.registerComponent2(() => _SignIn());

class _Copyright extends react.Component2 {
  @override
  dynamic render() => Typography(
      {'variant': 'body2', 'color': 'textSecondary', 'align': 'center'},
      'Copyright © ',
      Link({'color': 'inherit', 'href': 'https://material-ui.com/'},
          'Your Website'),
      ' ',
      DateTime.now().toIso8601String(),
      '.');
}

final Copyright = react.registerComponent2(() => _Copyright());

// const useStyles = (0, _styles.makeStyles)(theme => ({
//   paper: {
//     marginTop: theme.spacing(8),
//     display: 'flex',
//     flexDirection: 'column',
//     alignItems: 'center'
//   },
//   avatar: {
//     margin: theme.spacing(1),
//     backgroundColor: theme.palette.secondary.main
//   },
//   form: {
//     width: '100%',
//     // Fix IE 11 issue.
//     marginTop: theme.spacing(1)
//   },
//   submit: {
//     margin: theme.spacing(3, 0, 2)
//   }
// }));
