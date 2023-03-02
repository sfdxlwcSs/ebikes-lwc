public class ParkLocator {
    public static  List<String> country (String countryName){
        ParkService.ParksImplPort obj=new ParkService.ParksImplPort();
        return obj.byCountry(countryName);
    }

}