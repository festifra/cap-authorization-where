annotate authorizationWhere with @(requires: 'authenticated-user');

annotate authorizationWhere.Messages with @(restrict: [
  { grant: ['READ'], to: 'any' },
  { grant: ['WRITE'], to: 'MessageEditor', where: 'typeMessage <> ''systemLabel'' AND typeMessage <> ''systemMessage'' ' },
]);

annotate authorizationWhere.Messages_texts with @(restrict: [
  { grant: ['READ'], to: 'any' },
  { grant: ['WRITE'], to: 'MessageEditor' }
]);