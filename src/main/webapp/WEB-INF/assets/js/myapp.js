//$(function(){
////     $.fn.dataTable.ext.errMode = 'throw';
//
//switch (menu) {
//
//case 'About Us':
//        $('#about').addClass('active');
//        break;
//        case 'Contact Us':
//        $('#contact').addClass('active');
//        break;
//        case 'All Products':
//        $('#listProducts').addClass('active');
//        break;
//        case 'Product Management':
//        $('#manageProduct').addClass('active');
//        break;
//        case 'Shopping Cart':
//        $('#userModel').addClass('active');
//        break;
//        default:
//        if (menu == "Home")
//        break;
//        $('#listProducts').addClass('active');
//        $('#a_' + menu).addClass('active');
//        break;
//} //swicth function close;
////        code for jQuery Data Tables ;
//
//var products = [
//        ['1', 'ALU', '20', 'gab', 'cap'],
//        ['2', 'BAGUN'],
//        ['3', 'CHAL'],
//        ['4', 'DAL'],
//        ['5', 'ECHA MACH'],
//        ['6', 'FISHA MACH'],
//        ['7', 'GORU'],
//        ['8', 'HASH'],
//        ['9', 'POTOL'],
//        ['10', 'JHINGA'],
//        ['11', 'LAU'],
//        ['12', 'MODHU'],
//        ['13', 'MORICH'],
//        ['14', 'HOLUD'],
//        ['15', 'NARKEL']
//];
//        var $table = $('#productListTable');
//        if ($table.length){
////      $.fn.dataTable.ext.errMode = 'throw';
//var jsonUrl = '';
//        if (window.categoryId === "") {
//jsonUrl = window.contextRoot + '/json/data/all/products';
//        } else {
//jsonUrl = window.contextRoot + '/json/data/category/' + window.categoryId + '/products';
//        }
//
//
//$table.dataTable({
//lengthMenu: [[5, 10, 20, 50, 100, - 1],
//        [
//                '5 Results',
//                '10 Results',
//                '20 Results',
//                '50 Results',
//                '100 Results',
//                'All Results'
//                ]
//        ],
//        pageLength: 10,
//        ajax: {
//        url: jsonUrl,
//                dataSrc: ''
//        },
//        columns: [ 
//                    
//                        { data: 'code',
//                          mRender: function(data, type, row){
//                          return '<img src = "'+ctx+'/images/'+ data +'.jpg" />';
////                          return '<img src ="'+ctx+'/images/PRDABC123DEFX.jpg" />';
//                            
//                          }
//                        },
//                        { data: 'name'      },
//                        { data: 'brand'     }, 
//                        { data: 'unitPrice',
//                              mRender: function(data, type, row){
//                              return '&#2547;' + data; }
//
//
//                        },
//                            { data: 'quantity'  },
//                            {  data: 'id',
//                                bSortable: false,
//                                mRender: function(data, type, row){
//                                var str = '';
//                                        str += '<a href="' + window.contextRoot + '/show' + data + '/products" class="btn btn-primary"> View</a><br/><br/>';
//                                        str += '<a href="' + window.contextRoot + '/cart/add/' + data + '/products" class="btn btn-success">Add to Cart</a>';
//                                        return str;
//                            } 
//                                    }
//
//                    ]
//});
//
//
//
//
//
//
//
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//});  // page close
//
