<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 27/09/2024
  Time: 1:36 CH
  To change this template/web use File | Settings | File template/webs.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>SBook - BookStore</title>
</head>

<body class="index-page">

<main class="main">
    <!-- Hero Section -->
    <section id="hero" class="hero section dark-background">
        <div
                id="hero-carousel"
                class="carousel slide carousel-fade"
                data-bs-ride="carousel"
                data-bs-interval="5000"
        >
            <div class="carousel-item active">
                <img src="${pageContext.request.contextPath}/template/web/assets/img/car/banner-02.png" alt="" />
                <div class="carousel-container">
                    <h2><span>Cửa hàng</span> VinFast</h2>
                    <p>
                        VinFast là thương hiệu ô tô đầu tiên của Việt Nam, trực thuộc
                        Tập đoàn Vingroup – một trong những tập đoàn kinh tế tư nhân
                        hàng đầu châu Á. Được thành lập vào năm 2017, VinFast nhanh
                        chóng ghi dấu ấn trên thị trường ô tô toàn cầu nhờ các dòng sản
                        phẩm chất lượng cao, thiết kế hiện đại và tích hợp công nghệ
                        tiên tiến. Tự hào mang sứ mệnh “Mạnh mẽ vươn cao,” VinFast không
                        chỉ khẳng định năng lực sản xuất mà còn đại diện cho khát vọng
                        đưa thương hiệu Việt ra thế giới.
                    </p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/template/web/assets/img/car/banner-03.png" alt="" />
                <div class="carousel-container">
                    <h2>At vero eos et accusamus</h2>
                    <p>
                        VinFast hướng tới trở thành một trong những hãng xe dẫn đầu xu
                        thế toàn cầu về xe điện thông minh, thân thiện với môi trường.
                        Với tầm nhìn chiến lược, công ty không ngừng đổi mới và phát
                        triển các sản phẩm ô tô điện đẳng cấp, kết hợp các tính năng
                        thông minh để nâng cao trải nghiệm người dùng. Sứ mệnh của
                        VinFast không chỉ là đưa Việt Nam lên bản đồ công nghiệp ô tô
                        quốc tế, mà còn đóng góp tích cực vào xu hướng phát triển bền
                        vững của ngành giao thông vận tải.
                    </p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/template/web/assets/img/car/banner-03.png" alt="" />
                <div class="carousel-container">
                    <h2>Temporibus autem quibusdam</h2>
                    <p>
                        VinFast không ngừng đổi mới để đáp ứng xu hướng công nghệ của
                        thời đại. Với định hướng sản xuất xe điện, VinFast đặt trọng tâm
                        vào việc giảm thiểu phát thải carbon và bảo vệ môi trường. Bên
                        cạnh đó, các sản phẩm của VinFast được tích hợp những công nghệ
                        tiên tiến nhất, từ hệ thống tự lái, trợ lý ảo, đến khả năng cập
                        nhật phần mềm qua mạng (OTA), mang đến trải nghiệm di chuyển
                        thông minh và hiện đại cho khách hàng.
                    </p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <a
                    class="carousel-control-prev"
                    href="#hero-carousel"
                    role="button"
                    data-bs-slide="prev"
            >
            <span
                    class="carousel-control-prev-icon bi bi-chevron-left"
                    aria-hidden="true"
            ></span>
            </a>

            <a
                    class="carousel-control-next"
                    href="#hero-carousel"
                    role="button"
                    data-bs-slide="next"
            >
            <span
                    class="carousel-control-next-icon bi bi-chevron-right"
                    aria-hidden="true"
            ></span>
            </a>

            <ol class="carousel-indicators"></ol>
        </div>
    </section>
    <!-- /Hero Section -->

    <!-- About Section -->
    <section id="about" class="about section light-background">
        <div class="container">
            <div class="row gy-4">
                <div
                        class="col-lg-6 position-relative align-self-start"
                        data-aos="fade-up"
                        data-aos-delay="100"
                >
                    <img src="${pageContext.request.contextPath}/template/web/assets/img/car/1.png" class="img-fluid" alt="" />
                    <a
                            href="https://youtu.be/ctUtaL8oZK4?si=USwSFihrmek7ygfg"
                            class="glightbox pulsating-play-btn"
                    ></a>
                </div>
                <div
                        class="col-lg-6 content"
                        data-aos="fade-up"
                        data-aos-delay="200"
                >
                    <h3>Giới thiệu về VinFast .</h3>
                    <p class="fst-italic">
                        VinFast là công ty thành viên thuộc tập đoàn Vingroup, một trong
                        những Tập đoàn Kinh tế tư nhân đa ngành lớn nhất Châu Á. Với
                        triết lý “Đặt khách hàng làm trọng tâm”, VinFast không ngừng
                        sáng tạo để tạo ra các sản phẩm đẳng cấp và trải nghiệm xuất sắc
                        cho mọi người.
                    </p>

                    <ul>
                        <li>
                            <i class="bi bi-check2-all"></i>
                            <span
                            >VinFast tập trung phát triển các dòng xe điện thông minh,
                    thân thiện với môi trường, góp phần thúc đẩy xu hướng giao
                    thông bền vững. Bằng nỗ lực không ngừng, VinFast đã mở rộng
                    thị trường ra các khu vực lớn như Mỹ, châu Âu và châu Á,
                    mang đến những sản phẩm hiện đại và đáng tin cậy cho người
                    tiêu dùng.</span
                            >
                        </li>
                        <li>
                            <i class="bi bi-check2-all"></i>
                            <span
                            >Ngoài ra, VinFast cũng chú trọng vào việc tích hợp công
                    nghệ tiên tiến trong sản phẩm, từ hệ thống tự lái đến các
                    tính năng thông minh, giúp nâng cao trải nghiệm sử dụng của
                    khách hàng. Với sứ mệnh "Vì một tương lai xanh hơn," VinFast
                    đang góp phần xây dựng một môi trường sống lành mạnh và hiện
                    đại.</span
                            >
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- /About Section -->

    <!-- Why Us Section -->
    <section id="why-us" class="why-us section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Hãy tìm đến chúng tôi</h2>
            <div>
                <span>Với nhiều mẫu xe đa dạng chỉ có tại </span>
                <span class="description-title">Cửa hàng VinFast</span>
            </div>
        </div>
        <!-- End Section Title -->

        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="card-item">
                        <span>VF7</span>
                        <img src="${pageContext.request.contextPath}/template/web/assets/img/car/VF7-car.png" alt="" style="height: 255.79px;
                        width: 455px; margin-left: -65px; object-fit: cover;">
                        <h4><a href="" class="stretched-link"></a></h4>
                        <p>
                            Được định vị ở phân khúc SUV cỡ trung, VF 7 sở hữu thiết kế
                            hiện đại, thể thao cùng các tính năng công nghệ tiên tiến, phù
                            hợp cho người dùng trẻ năng động.
                        </p>
                    </div>
                </div>
                <!-- Card Item -->

                <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="card-item">
                        <span>VF8</span>
                        <img src="${pageContext.request.contextPath}/template/web/assets/img/car/VF8-car.png" alt="" style="height: 255.79px;
                        width: 455px; margin-left: -65px; object-fit: cover;">
                        <h4><a href="" class="stretched-link"></a></h4>
                        Là mẫu SUV điện toàn cầu, VF 8 nổi bật với không gian rộng rãi, khả năng vận hành mạnh mẽ và nhiều tính năng thông minh, mang lại trải nghiệm thoải mái và an toàn cho cả gia đình.

                        </p>
                    </div>
                </div>
                <!-- Card Item -->

                <div class="col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="card-item">
                        <span>VF9</span>
                        <img src="${pageContext.request.contextPath}/template/web/assets/img/car/VF9-car.png" alt="" style="height: 255.79px;
                        width: 455px; margin-left: -65px; object-fit: cover;">
                        <h4><a href="" class="stretched-link"></a></h4>
                        Thuộc phân khúc SUV cỡ lớn, VF 9 gây ấn tượng với thiết kế sang trọng, nội thất 7 chỗ cao cấp cùng tầm hoạt động dài, lý tưởng cho những chuyến đi xa và phong cách sống đẳng cấp.
                        </p>
                    </div>
                </div>
                <!-- Card Item -->
            </div>
        </div>
    </section>
    <!-- /Why Us Section -->

    <!-- Menu Section -->
    <section id="menu" class="menu section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Menu</h2>
            <div>
                <span>Check Our Tasty</span>
                <span class="description-title">Menu</span>
            </div>
        </div>
        <!-- End Section Title -->

        <div
                class="container isotope-layout"
                data-default-filter="*"
                data-layout="masonry"
                data-sort="original-order"
        >
            <div class="row" data-aos="fade-up" data-aos-delay="100">
                <div class="col-lg-12 d-flex justify-content-center">
                    <ul class="menu-filters isotope-filters">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".filter-starters">Starters</li>
                        <li data-filter=".filter-salads">Salads</li>
                        <li data-filter=".filter-specialty">Specialty</li>
                    </ul>
                </div>
            </div>
            <!-- Menu Filters -->

            <div
                    class="row isotope-container"
                    data-aos="fade-up"
                    data-aos-delay="200"
            >
                <div class="col-lg-6 menu-item isotope-item filter-starters">
                    <img
                            src="${pageContext.request.contextPath}/template/web/assets/img/menu/lobster-bisque.jpg"
                            class="menu-img"
                            alt=""
                    />
                    <div class="menu-content">
                        <a href="#">Lobster Bisque</a><span>$5.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Lorem, deren, trataro, filede, nerada
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-specialty">
                    <img
                            src="${pageContext.request.contextPath}/template/web/assets/img/menu/bread-barrel.jpg"
                            class="menu-img"
                            alt=""
                    />
                    <div class="menu-content">
                        <a href="#">Bread Barrel</a><span>$6.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Lorem, deren, trataro, filede, nerada
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-starters">
                    <img src="${pageContext.request.contextPath}/template/web/assets/img/menu/cake.jpg" class="menu-img" alt="" />
                    <div class="menu-content">
                        <a href="#">Crab Cake</a><span>$7.95</span>
                    </div>
                    <div class="menu-ingredients">
                        A delicate crab cake served on a toasted roll with lettuce and
                        tartar sauce
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-salads">
                    <img src="${pageContext.request.contextPath}/template/web/assets/img/menu/caesar.jpg" class="menu-img" alt="" />
                    <div class="menu-content">
                        <a href="#">Caesar Selections</a><span>$8.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Lorem, deren, trataro, filede, nerada
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-specialty">
                    <img
                            src="${pageContext.request.contextPath}/template/web/assets/img/menu/tuscan-grilled.jpg"
                            class="menu-img"
                            alt=""
                    />
                    <div class="menu-content">
                        <a href="#">Tuscan Grilled</a><span>$9.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Grilled chicken with provolone, artichoke hearts, and roasted
                        red pesto
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-starters">
                    <img
                            src="${pageContext.request.contextPath}/template/web/assets/img/menu/mozzarella.jpg"
                            class="menu-img"
                            alt=""
                    />
                    <div class="menu-content">
                        <a href="#">Mozzarella Stick</a><span>$4.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Lorem, deren, trataro, filede, nerada
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-salads">
                    <img
                            src="${pageContext.request.contextPath}/template/web/assets/img/menu/greek-salad.jpg"
                            class="menu-img"
                            alt=""
                    />
                    <div class="menu-content">
                        <a href="#">Greek Salad</a><span>$9.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Fresh spinach, crisp romaine, tomatoes, and Greek olives
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-salads">
                    <img
                            src="${pageContext.request.contextPath}/template/web/assets/img/menu/spinach-salad.jpg"
                            class="menu-img"
                            alt=""
                    />
                    <div class="menu-content">
                        <a href="#">Spinach Salad</a><span>$9.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Fresh spinach with mushrooms, hard boiled egg, and warm bacon
                        vinaigrette
                    </div>
                </div>
                <!-- Menu Item -->

                <div class="col-lg-6 menu-item isotope-item filter-specialty">
                    <img
                            src="${pageContext.request.contextPath}/template/web/assets/img/menu/lobster-roll.jpg"
                            class="menu-img"
                            alt=""
                    />
                    <div class="menu-content">
                        <a href="#">Lobster Roll</a><span>$12.95</span>
                    </div>
                    <div class="menu-ingredients">
                        Plump lobster meat, mayo and crisp lettuce on a toasted bulky
                        roll
                    </div>
                </div>
                <!-- Menu Item -->
            </div>
            <!-- Menu Container -->
        </div>
    </section>
    <!-- /Menu Section -->

    <!-- Specials Section -->
    <section id="specials" class="specials section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Specials</h2>
            <div>
                <span>Check Our</span>
                <span class="description-title">Specials</span>
            </div>
        </div>
        <!-- End Section Title -->

        <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class="row">
                <div class="col-lg-3">
                    <ul class="nav nav-tabs flex-column">
                        <li class="nav-item">
                            <a
                                    class="nav-link active show"
                                    data-bs-toggle="tab"
                                    href="#specials-tab-1"
                            >Modi sit est</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-bs-toggle="tab"
                                    href="#specials-tab-2"
                            >Unde praesentium sed</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-bs-toggle="tab"
                                    href="#specials-tab-3"
                            >Pariatur explicabo vel</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-bs-toggle="tab"
                                    href="#specials-tab-4"
                            >Nostrum qui quasi</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-bs-toggle="tab"
                                    href="#specials-tab-5"
                            >Iusto ut expedita aut</a
                            >
                        </li>
                    </ul>
                </div>
                <div class="col-lg-9 mt-4 mt-lg-0">
                    <div class="tab-content">
                        <div class="tab-pane active show" id="specials-tab-1">
                            <div class="row">
                                <div class="col-lg-8 details order-2 order-lg-1">
                                    <h3>Architecto ut aperiam autem id</h3>
                                    <p class="fst-italic">
                                        Qui laudantium consequatur laborum sit qui ad sapiente
                                        dila parde sonata raqer a videna mareta paulona marka
                                    </p>
                                    <p>
                                        Et nobis maiores eius. Voluptatibus ut enim blanditiis
                                        atque harum sint. Laborum eos ipsum ipsa odit magni.
                                        Incidunt hic ut molestiae aut qui. Est repellat minima
                                        eveniet eius et quis magni nihil. Consequatur dolorem
                                        quaerat quos qui similique accusamus nostrum rem vero
                                    </p>
                                </div>
                                <div class="col-lg-4 text-center order-1 order-lg-2">
                                    <img
                                            src="${pageContext.request.contextPath}/template/web/assets/img/specials-1.jpg"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="specials-tab-2">
                            <div class="row">
                                <div class="col-lg-8 details order-2 order-lg-1">
                                    <h3>Et blanditiis nemo veritatis excepturi</h3>
                                    <p class="fst-italic">
                                        Qui laudantium consequatur laborum sit qui ad sapiente
                                        dila parde sonata raqer a videna mareta paulona marka
                                    </p>
                                    <p>
                                        Ea ipsum voluptatem consequatur quis est. Illum error
                                        ullam omnis quia et reiciendis sunt sunt est. Non
                                        aliquid repellendus itaque accusamus eius et velit ipsa
                                        voluptates. Optio nesciunt eaque beatae accusamus lerode
                                        pakto madirna desera vafle de nideran pal
                                    </p>
                                </div>
                                <div class="col-lg-4 text-center order-1 order-lg-2">
                                    <img
                                            src="${pageContext.request.contextPath}/template/web/assets/img/specials-2.jpg"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="specials-tab-3">
                            <div class="row">
                                <div class="col-lg-8 details order-2 order-lg-1">
                                    <h3>Impedit facilis occaecati odio neque aperiam sit</h3>
                                    <p class="fst-italic">
                                        Eos voluptatibus quo. Odio similique illum id quidem non
                                        enim fuga. Qui natus non sunt dicta dolor et. In
                                        asperiores velit quaerat perferendis aut
                                    </p>
                                    <p>
                                        Iure officiis odit rerum. Harum sequi eum illum corrupti
                                        culpa veritatis quisquam. Neque necessitatibus illo
                                        rerum eum ut. Commodi ipsam minima molestiae sed
                                        laboriosam a iste odio. Earum odit nesciunt fugiat sit
                                        ullam. Soluta et harum voluptatem optio quae
                                    </p>
                                </div>
                                <div class="col-lg-4 text-center order-1 order-lg-2">
                                    <img
                                            src="${pageContext.request.contextPath}/template/web/assets/img/specials-3.jpg"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="specials-tab-4">
                            <div class="row">
                                <div class="col-lg-8 details order-2 order-lg-1">
                                    <h3>
                                        Fuga dolores inventore laboriosam ut est accusamus
                                        laboriosam dolore
                                    </h3>
                                    <p class="fst-italic">
                                        Totam aperiam accusamus. Repellat consequuntur iure
                                        voluptas iure porro quis delectus
                                    </p>
                                    <p>
                                        Eaque consequuntur consequuntur libero expedita in
                                        voluptas. Nostrum ipsam necessitatibus aliquam fugiat
                                        debitis quis velit. Eum ex maxime error in consequatur
                                        corporis atque. Eligendi asperiores sed qui veritatis
                                        aperiam quia a laborum inventore
                                    </p>
                                </div>
                                <div class="col-lg-4 text-center order-1 order-lg-2">
                                    <img
                                            src="${pageContext.request.contextPath}/template/web/assets/img/specials-4.jpg"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="specials-tab-5">
                            <div class="row">
                                <div class="col-lg-8 details order-2 order-lg-1">
                                    <h3>
                                        Est eveniet ipsam sindera pad rone matrelat sando reda
                                    </h3>
                                    <p class="fst-italic">
                                        Omnis blanditiis saepe eos autem qui sunt debitis porro
                                        quia.
                                    </p>
                                    <p>
                                        Exercitationem nostrum omnis. Ut reiciendis repudiandae
                                        minus. Omnis recusandae ut non quam ut quod eius qui.
                                        Ipsum quia odit vero atque qui quibusdam amet. Occaecati
                                        sed est sint aut vitae molestiae voluptate vel
                                    </p>
                                </div>
                                <div class="col-lg-4 text-center order-1 order-lg-2">
                                    <img
                                            src="${pageContext.request.contextPath}/template/web/assets/img/specials-5.jpg"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Specials Section -->

    <!-- Events Section -->
    <section id="events" class="events section">
        <img
                class="slider-bg"
                src="${pageContext.request.contextPath}/template/web/assets/img/car/6.png"
                alt=""
                data-aos="fade-in"
        />

        <div class="container">
            <div
                    class="swiper init-swiper"
                    data-aos="fade-up"
                    data-aos-delay="100"
            >
                <script type="application/json" class="swiper-config">
                    {
                        "loop": true,
                        "speed": 600,
                        "autoplay": {
                            "delay": 5000
                        },
                        "slidesPerView": "auto",
                        "pagination": {
                            "el": ".swiper-pagination",
                            "type": "bullets",
                            "clickable": true
                        }
                    }
                </script>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="row gy-4 event-item">
                            <div class="col-lg-6">
                                <img
                                        src="${pageContext.request.contextPath}/template/web/assets/img/car/3.png"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                            <div class="col-lg-6 pt-4 pt-lg-0 content">
                                <h3>Tại sao nên lựa chọn VinFast?</h3>
                                <div class="price">
                                </div>

                                <ul>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span
                                        >VinFast là niềm tự hào của Việt Nam khi trở thành thương hiệu ô tô đầu tiên vươn tầm quốc tế.</span
                                        >
                                    </li>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span
                                        > Các sản phẩm của VinFast không chỉ đạt tiêu chuẩn chất lượng cao, được kiểm định bởi các tổ chức hàng đầu thế giới mà còn mang đậm bản sắc sáng tạo và tinh thần đổi mới. </span
                                        >
                                    </li>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span
                                        > Đây là sự kết hợp hoàn hảo giữa giá trị Việt và công nghệ tiên tiến toàn cầu.</span
                                        >
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <!-- End Slider item -->

                    <div class="swiper-slide">
                        <div class="row gy-4 event-item">
                            <div class="col-lg-6">
                                <img
                                        src="${pageContext.request.contextPath}/template/web/assets/img/car/4.png"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                            <div class="col-lg-6 pt-4 pt-lg-0 content">
                                <h3>Tại sao nên lựa chọn VinFast?</h3>
                                <div class="price">

                                </div>
                                <ul>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span
                                        >Những tính năng này mang lại trải nghiệm tiện lợi, an toàn và đẳng cấp, đáp ứng mọi nhu cầu của người dùng trong thời đại công nghệ số.</span
                                        >
                                    </li>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span
                                        >VinFast tiên phong trong việc tích hợp nhiều công nghệ vượt trội như hệ thống tự lái, cập nhật phần mềm qua mạng (OTA) và trợ lý ảo.</span
                                        >
                                    </li>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span
                                        >VinFast tiên phong trong việc phát triển các dòng xe điện thông minh.</span
                                        >
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <!-- End Slider item -->

                    <div class="swiper-slide">
                        <div class="row gy-4 event-item">
                            <div class="col-lg-6">
                                <img
                                        src="${pageContext.request.contextPath}/template/web/assets/img/car/5.png"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                            <div class="col-lg-6 pt-4 pt-lg-0 content">
                                <h3>Tại sao nên lựa chọn VinFast?</h3>
                                <ul>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span
                                        >Với định hướng sản xuất xe điện, VinFast cam kết góp phần giảm thiểu phát thải khí carbon, bảo vệ môi trường và xây dựng một tương lai xanh hơn.</span
                                        >
                                    </li>
                                    <li>
                                        <i class="bi bi-check2-circle"></i>
                                        <span>
                        Lựa chọn VinFast không chỉ là lựa chọn phương tiện di chuyển thông minh mà còn là hành động chung tay xây dựng một hành tinh sạch hơn cho các thế hệ mai sau.</span
                                        >
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Slider item -->
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
    <!-- /Events Section -->

    <!-- Book A Table Section -->
    <section id="book-a-table" class="book-a-table section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Mua 1 chiếc xe</h2>
            <div>
                <span>Liên hệ với chúng tôi</span>
            </div>
        </div>
        <!-- End Section Title -->

        <div class="container">
            <div class="row g-0" data-aos="fade-up" data-aos-delay="100">
                <div
                        class="col-lg-4 reservation-img"
                        style="background-image: url(${pageContext.request.contextPath}/template/web/assets/img/car/lien-he.png);width: 300px;"
                ></div>

                <div
                        class="col-lg-8 d-flex align-items-center reservation-form-bg"
                        data-aos="fade-up"
                        data-aos-delay="200"
                >
                    <form
                            action="forms/book-a-table.php"
                            method="post"
                            role="form"
                            class="php-email-form"
                    >
                        <div class="row gy-4">
                            <div class="col-lg-4 col-md-6">
                                <input
                                        type="text"
                                        name="name"
                                        class="form-control"
                                        id="name1"
                                        placeholder="Your Name"
                                        required=""
                                />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <input
                                        type="email"
                                        class="form-control"
                                        name="email"
                                        id="email1"
                                        placeholder="Your Email"
                                        required=""
                                />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <input
                                        type="text"
                                        class="form-control"
                                        name="phone"
                                        id="phone"
                                        placeholder="Your Phone"
                                        required=""
                                />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <input
                                        type="date"
                                        name="date"
                                        class="form-control"
                                        id="date"
                                        placeholder="Date"
                                        required=""
                                />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <input
                                        type="time"
                                        class="form-control"
                                        name="time"
                                        id="time"
                                        placeholder="Time"
                                        required=""
                                />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <input
                                        type="number"
                                        class="form-control"
                                        name="people"
                                        id="people"
                                        placeholder="# of people"
                                        required=""
                                />
                            </div>
                        </div>

                        <div class="form-group mt-3">
                  <textarea
                          class="form-control"
                          name="message"
                          rows="5"
                          placeholder="Message"
                  ></textarea>
                        </div>

                        <div class="text-center mt-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">
                                Cảm ơn bạn đã gửi yêu cầu. Chúng tôi sẽ liên hệ hoặc gửi gmail cho bạn sớm nhất.
                            </div>
                            <button type="submit">Gửi cho chúng tôi</button>
                        </div>
                    </form>
                </div>
                <!-- End Reservation Form -->
            </div>
        </div>
    </section>
    <!-- /Book A Table Section -->

    <!-- Gallery Section -->
    <section id="gallery" class="gallery section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Bộ sưu tập</h2>
            <div>
                <span>Một số hình ảnh về sản phẩm ô tô của công ty</span>
                <span class="description-title">VinFast</span>
            </div>
        </div>
        <!-- End Section Title -->

        <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
            <div class="row g-0">
                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/9.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/9.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"
                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->

                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/10.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/10.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"

                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->

                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/11.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/11.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"
                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->

                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/12.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/12.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"
                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->

                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/13.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/13.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"
                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->

                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/14.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/14.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"
                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->

                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/15.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/15.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"
                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->

                <div class="col-lg-3 col-md-4">
                    <div class="gallery-item">
                        <a
                                href="${pageContext.request.contextPath}/template/web/assets/img/car/16.png"
                                class="glightbox"
                                data-gallery="images-gallery"
                        >
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/16.png" style="width: 416px; height: 312px;"
                                    alt=""
                                    class="img-fluid"
                            />
                        </a>
                    </div>
                </div>
                <!-- End Gallery Item -->
            </div>
        </div>
    </section>
    <!-- /Gallery Section -->

    <!-- cổ đông Section -->
    <section id="chefs" class="chefs section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Người dẫn dắt</h2>
            <div>
                <span>Thông tin cá nhân</span>
                <span class="description-title">Người dẫn dắt</span>
            </div>
        </div>
        <!-- End Section Title -->

        <div class="container">
            <div class="row gy-5">
                <div
                        class="col-lg-4 col-md-6"
                        data-aos="fade-up"
                        data-aos-delay="100"
                >
                    <div class="member">
                        <div class="pic">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/pct2.png" style="width: 416px;height: 416px;"
                                    class="img-fluid"
                                    alt=""
                            />
                        </div>
                        <div class="member-info">
                            <h4>Lê Khắc Hiệp</h4>
                            <span>Phó chủ tịch hội đồng quản trị</span>
                            <div class="social">
                                <a href=""><i class="bi bi-twitter-x"></i></a>
                                <a href=""><i class="bi bi-facebook"></i></a>
                                <a href=""><i class="bi bi-instagram"></i></a>
                                <a href=""><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Team Member -->

                <div
                        class="col-lg-4 col-md-6"
                        data-aos="fade-up"
                        data-aos-delay="200"
                >
                    <div class="member">
                        <div class="pic">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/ceo.png" style="width: 416px;height: 416px;"
                                    class="img-fluid"
                                    alt=""
                            />
                        </div>
                        <div class="member-info">
                            <h4>Phạm Nhật Vượng</h4>
                            <span>Chủ tịch hội đồng quản trị</span>
                            <div class="social">
                                <a href=""><i class="bi bi-twitter-x"></i></a>
                                <a href=""><i class="bi bi-facebook"></i></a>
                                <a href=""><i class="bi bi-instagram"></i></a>
                                <a href=""><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Team Member -->

                <div
                        class="col-lg-4 col-md-6"
                        data-aos="fade-up"
                        data-aos-delay="300"
                >
                    <div class="member">
                        <div class="pic">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/car/pct1.png" style="width: 416px;height: 416px;"
                                    class="img-fluid"
                                    alt=""
                            />
                        </div>
                        <div class="member-info">
                            <h4>Nguyễn Việt Quang</h4>
                            <span>Phó chủ tịch hội đồng quản trị</span>
                            <div class="social">
                                <a href=""><i class="bi bi-twitter-x"></i></a>
                                <a href=""><i class="bi bi-facebook"></i></a>
                                <a href=""><i class="bi bi-instagram"></i></a>
                                <a href=""><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Team Member -->
            </div>
        </div>
    </section>
    <!-- /Chefs Section -->

    <!-- Testimonials Section -->
    <section id="testimonials" class="testimonials section dark-background">
        <img
                src="${pageContext.request.contextPath}/template/web/assets/img/car/tap-doan-vin.png"
                class="testimonials-bg"
                alt=""
        />

        <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class="swiper init-swiper">
                <script type="application/json" class="swiper-config">
                    {
                        "loop": true,
                        "speed": 600,
                        "autoplay": {
                            "delay": 5000
                        },
                        "slidesPerView": "auto",
                        "pagination": {
                            "el": ".swiper-pagination",
                            "type": "bullets",
                            "clickable": true
                        }
                    }
                </script>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="testimonial-item">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/testimonials/testimonials-1.jpg"
                                    class="testimonial-img"
                                    alt=""
                            />
                            <h3>Saul Goodman</h3>
                            <h4>Ceo &amp; Founder</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i
                                ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span
                                >Thiết kế hiện đại, thời thượng
                      Xe điện VinFast được đánh giá cao nhờ thiết kế đẹp mắt, phong cách hiện đại và phù hợp với nhiều đối tượng người dùng. Từ dòng VF e34 đến VF 9, các mẫu xe đều mang phong cách sang trọng và đậm chất Việt.</span
                                >
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div>
                    <!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-item">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/testimonials/testimonials-2.jpg"
                                    class="testimonial-img"
                                    alt=""
                            />
                            <h3>Sara Wilsson</h3>
                            <h4>Designer</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i
                                ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span>
                    Khả năng vận hành êm ái
                    Nhiều người dùng cho biết xe điện VinFast có khả năng vận hành êm ái, giảm tiếng ồn tối đa nhờ động cơ điện.</span
                                >
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div>
                    <!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-item">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/testimonials/testimonials-3.jpg"
                                    class="testimonial-img"
                                    alt=""
                            />
                            <h3>Jena Karlis</h3>
                            <h4>Store Owner</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i
                                ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span
                                >Công nghệ hiện đại
                      Xe VinFast được trang bị nhiều tính năng thông minh như hệ thống trợ lý ảo, điều khiển qua ứng dụng di động, cùng các công nghệ hỗ trợ lái tiên tiến như cảnh báo va chạm, giữ làn đường, và tự động phanh khẩn cấp.</span
                                >
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div>
                    <!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-item">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/testimonials/testimonials-4.jpg"
                                    class="testimonial-img"
                                    alt=""
                            />
                            <h3>Matt Brandon</h3>
                            <h4>Freelancer</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i
                                ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span
                                >Giảm phát thải, bảo vệ môi trường
                      Sử dụng xe điện VinFast góp phần giảm lượng khí thải CO2, hướng tới một môi trường sống xanh và bền vững.</span
                                >
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div>
                    <!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-item">
                            <img
                                    src="${pageContext.request.contextPath}/template/web/assets/img/testimonials/testimonials-5.jpg"
                                    class="testimonial-img"
                                    alt=""
                            />
                            <h3>John Larson</h3>
                            <h4>Entrepreneur</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i
                                ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i
                            ><i class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span
                                >Chính sách bảo hành và dịch vụ
                      VinFast nổi bật với chính sách bảo hành tốt, lên đến 10 năm hoặc 200.000 km. Ngoài ra, dịch vụ hỗ trợ sạc pin, bảo dưỡng và chăm sóc khách hàng của hãng cũng được đánh giá cao.</span
                                >
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div>
                    <!-- End testimonial item -->
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
    <!-- /Testimonials Section -->

    <!-- Contact Section -->
    <section id="contact" class="contact section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Liên hệ</h2>
            <div>
                <span>Liên lạc ngay với chúng tôi nhé!</span>
                <span class="description-title">Liên hệ</span>
            </div>
        </div>
        <!-- End Section Title -->

        <div class="mb-5">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d589580.4851605991!2d105.78027860813738!3d20.914963441576585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a69b200c8ad4d%3A0x8de9bb152242e82a!2sVinFast%20Factory!5e0!3m2!1svi!2s!4v1731843477671!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <!-- End Google Maps -->

        <div class="container" data-aos="fade">
            <div class="row gy-5 gx-lg-5">
                <div class="col-lg-4">
                    <div class="info">
                        <h3>Liên hệ</h3>
                        <p>
                            Hãy gọi cho tôi ngay khi bạn cần!
                        </p>

                        <div class="info-item d-flex">
                            <i class="bi bi-geo-alt flex-shrink-0"></i>
                            <div>
                                <h4>Địa điếm</h4>
                                <p>Hà Nội, Việt Nam</p>
                            </div>
                        </div>
                        <!-- End Info Item -->

                        <div class="info-item d-flex">
                            <i class="bi bi-envelope flex-shrink-0"></i>
                            <div>
                                <h4>Email:</h4>
                                <p>info@example.com</p>
                            </div>
                        </div>
                        <!-- End Info Item -->

                        <div class="info-item d-flex">
                            <i class="bi bi-phone flex-shrink-0"></i>
                            <div>
                                <h4>Call:</h4>
                                <p>+1 5589 55488 55</p>
                            </div>
                        </div>
                        <!-- End Info Item -->
                    </div>
                </div>

                <div class="col-lg-8">
                    <form
                            action="forms/contact.php"
                            method="post"
                            role="form"
                            class="php-email-form"
                    >
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <input
                                        type="text"
                                        name="name"
                                        class="form-control"
                                        id="name"
                                        placeholder="Your Name"
                                        required=""
                                />
                            </div>
                            <div class="col-md-6 form-group mt-3 mt-md-0">
                                <input
                                        type="email"
                                        class="form-control"
                                        name="email"
                                        id="email"
                                        placeholder="Your Email"
                                        required=""
                                />
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    name="subject"
                                    id="subject"
                                    placeholder="Subject"
                                    required=""
                            />
                        </div>
                        <div class="form-group mt-3">
                  <textarea
                          class="form-control"
                          name="message"
                          placeholder="Message"
                          required=""
                  ></textarea>
                        </div>
                        <div class="my-3">
                            <div class="loading">Chờ...</div>
                            <div class="error-message"></div>
                            <div class="sent-message">
                                Bạn đã gửi thành công tin nhắn. Cảm ơn!
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="submit">Gửi tin nhắn</button>
                        </div>
                    </form>
                </div>
                <!-- End Contact Form -->
            </div>
        </div>
    </section>
    <!-- /Contact Section -->
</main>


<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Preloader -->
<div id="preloader"></div>

</body>

</html>
