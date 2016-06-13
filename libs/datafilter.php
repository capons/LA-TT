<?php 
function trimAll($el) {             
        if(!is_array($el)){
            $el = trim($el);
        } else {
            $el = array_map('trimAll',$el);
        }
        return $el;
    }
function htmlAll($el){              
        if(!is_array($el)){
            $el = htmlspecialchars($el);
        }else {
            $el = array_map('htmlAll',$el);
        }
        return $el;
    }
?>