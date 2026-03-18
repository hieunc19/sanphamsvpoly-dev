<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubjectAttribute extends Model
{
    use HasFactory;
    protected $table = "subject_attributes";

    protected $fillable = ['name', 'subject_id'];

    public function product_evaluates(){
        return $this->belongsToMany(Product::class, 'product_evaluations', 'attribute_id', 'product_id');
    }

    public function evaluate_value($pId){
        return ProductEvaluate::where('attribute_id', $this->id)
                                ->where('product_id', $pId)
                                ->first();

    }

    public function display_evaluate($pId){
        $attr = $this->evaluate_value($pId);
        if(!empty($attr)){
            foreach (config('custom.PRODUCT_ATTR_STATUS') as $item) {
                if($item['key'] == $attr->evaluate_score){
                    $className = "text-warning";
                    if($attr->evaluate_score == 1){
                        $className = "text-success";
                    }else if($attr->evaluate_score == 2){
                        $className = "text-info";
                    }
                    return "<strong class='$className'>".$item['name']."</strong>";
                }
            }
        }else{
            return "Chưa đánh giá";
        }
    }

    public function getProductAttrScore($productId){
        $attr = ProductEvaluate::where('attribute_id', $this->id)
                        ->where('product_id', $productId)
                        ->first();
        if(empty($attr)){
            $attr = new ProductEvaluate();
            $attr->product_id = $productId;
            $attr->attribute_id = $this->id;
            $attr->evaluate_score = 3;
            $attr->save();
        }
        return $attr->evaluate_score;
    }
}
