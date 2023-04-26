package kz.kanglybay.javaEE;

import kz.kanglybay.javaEE.Item;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Item> list = new ArrayList<>();
    private static Long id = 1L;
    public static void addItem (Item item){
        item.setId(id);
        list.add(item);
        id++;
//        int rows = 0;
//        list.add(item);
//        rows = rows + 1;
//        return rows > 0;
    }
    public static ArrayList<Item> getAllItems(){
        return list;
    }
    public static Item getItem(Long id){
        return list.get(Math.toIntExact(id-1));
    }
}

