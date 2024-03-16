//package ru.itis.config;
//
//import com.google.common.base.Predicate;
//import com.google.common.base.Predicates;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import springfox.documentation.annotations.ApiIgnore;
//import springfox.documentation.builders.ApiInfoBuilder;
//import springfox.documentation.builders.PathSelectors;
//import springfox.documentation.builders.RequestHandlerSelectors;
//import springfox.documentation.service.ApiInfo;
//import springfox.documentation.spi.DocumentationType;
//import springfox.documentation.spring.web.plugins.Docket;
//import springfox.documentation.swagger2.annotations.EnableSwagger2;
//
//
//@EnableSwagger2
//@Configuration
//public class SwaggerConfig {
//
//    @Bean
//    public Docket swaggerSpringMvcPlugin() {
//        return new Docket(DocumentationType.SWAGGER_2)
//                .select()
//                .apis(RequestHandlerSelectors.any())
//                .paths(paths())
//                .build().apiInfo(apiInfo());
//    }
//
//    /**
//     * This function exclude all the paths we don't want to show in the swagger documentation.
//     * @return List of paths
//     */
//    private Predicate<String> paths() {
//        return Predicates.not(PathSelectors.regex("/error"));
//    }
//
//    private ApiInfo apiInfo() {
//        return new ApiInfoBuilder()
//                .title("Spring Restful API")
//                .description("This web service offers RESTful end points to place orders and manage products. ")
//                .license("Apache License Version 2.0")
//                .version("2.0")
//                .build();
//    }
//
//}