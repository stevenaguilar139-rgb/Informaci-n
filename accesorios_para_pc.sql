-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:20:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `accesorios_para_pc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Mouses', 'Mouses ópticos, láser, ergonómicos y gamers'),
(2, 'Teclados', 'Teclados mecánicos, de membrana, inalámbricos y ergonómicos'),
(3, 'Audífonos y Headsets', 'Audífonos con micrófono para gaming y oficina'),
(4, 'Monitores', 'Pantallas de alta frecuencia de actualización, 4K y curvas'),
(5, 'Alfombrillas / Mousepads', 'Superficies de tela y rígidas para deslizamiento del mouse'),
(6, 'Almacenamiento Interno', 'Discos duros HDD y unidades de estado sólido SSD M.2 NVMe'),
(7, 'Almacenamiento Externo', 'Discos duros portátiles y memorias USB/Flash'),
(8, 'Memorias RAM', 'Módulos de memoria RAM para PC de escritorio y laptops'),
(9, 'Tarjetas de Video', 'Componentes de procesamiento gráfico (NVIDIA, AMD)'),
(10, 'Procesadores', 'CPUs de última generación Intel y AMD Ryzen'),
(11, 'Tarjetas Madres', 'Placas base para diferentes sockets y formatos (ATX, Micro-ATX)'),
(12, 'Fuentes de Poder', 'Unidades de suministro de energía certificadas 80 Plus'),
(13, 'Gabinetes', 'Chasis para PC con paneles de vidrio templado y flujo de aire'),
(14, 'Sistemas de Enfriamiento', 'Disipadores por aire y sistemas de refrigeración líquida AIO'),
(15, 'Cables y Adaptadores', 'Cables HDMI, DisplayPort, USB-C, splitters y convertidores'),
(16, 'Hubs y Estaciones de Carga', 'Multiplicadores de puertos USB y estaciones de acoplamiento'),
(17, 'Cámaras Web', 'Webcams de alta definición para streaming y videollamadas'),
(18, 'Micrófonos', 'Micrófonos de condensador USB para creadores de contenido y podcast'),
(19, 'Altavoces / Bocinas', 'Sistemas de sonido estereofónico y barras de sonido para escritorio'),
(20, 'Sillas Gamers', 'Sillas ergonómicas diseñadas para largas sesiones de juego o trabajo'),
(21, 'Pastas Térmicas', 'Compuestos conductores térmicos para CPUs y GPUs'),
(22, 'Unidades Ópticas', 'Lectoras y quemadoras externas de DVD/Blu-ray'),
(23, 'Herramientas de Limpieza', 'Aire comprimido, alcohol isopropílico y kits de limpieza'),
(24, 'Tarjetas de Red / Wi-Fi', 'Adaptadores de red inalámbricos PCIe y antenas USB'),
(25, 'Soportes para Monitores', 'Brazos articulados y soportes de escritorio sencillos y dobles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `email`, `telefono`, `fecha_registro`) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@mail.com', '7123-4567', '2026-06-26 01:14:38'),
(2, 'María', 'Rodríguez', 'm.rodriguez@outlook.com', '7234-5678', '2026-06-26 01:14:38'),
(3, 'Luis', 'Martínez', 'lmar_90@gmail.com', '7345-6789', '2026-06-26 01:14:38'),
(4, 'Ana', 'Hernández', 'ana.herndz@yahoo.com', '7456-7890', '2026-06-26 01:14:38'),
(5, 'Carlos', 'López', 'clopez_hardware@mail.com', '7567-8901', '2026-06-26 01:14:38'),
(6, 'Sofía', 'García', 'sofia.garcia23@gmail.com', '7678-9012', '2026-06-26 01:14:38'),
(7, 'José', 'Ramírez', 'jramirez_sv@outlook.com', '7789-0123', '2026-06-26 01:14:38'),
(8, 'Laura', 'Flores', 'laura.flores@live.com', '7890-1234', '2026-06-26 01:14:38'),
(9, 'Diego', 'Vasquez', 'diego.vsqz@gmail.com', '7901-2345', '2026-06-26 01:14:38'),
(10, 'Elena', 'Palacios', 'epalacios_ingenieria@mail.com', '7012-3456', '2026-06-26 01:14:38'),
(11, 'Fernando', 'Mejía', 'fmejia.gaming@gmail.com', '7134-5678', '2026-06-26 01:14:38'),
(12, 'Gabriela', 'Mendoza', 'gaby.mendoza@outlook.com', '7245-6789', '2026-06-26 01:14:38'),
(13, 'Ricardo', 'Campos', 'rcampos_tech@gmail.com', '7356-7890', '2026-06-26 01:14:38'),
(14, 'Patricia', 'Orellana', 'patty.ore@yahoo.com', '7467-8901', '2026-06-26 01:14:38'),
(15, 'Manuel', 'Carcamo', 'mcarcamo99@gmail.com', '7578-9012', '2026-06-26 01:14:38'),
(16, 'Beatriz', 'Zelaya', 'bzelaya_sys@outlook.com', '7689-0123', '2026-06-26 01:14:38'),
(17, 'William', 'Guzmán', 'wguzman@gmail.com', '7790-1234', '2026-06-26 01:14:38'),
(18, 'Vanessa', 'Quintanilla', 'vane.quinta@live.com', '7801-2345', '2026-06-26 01:14:38'),
(19, 'Francisco', 'Rivas', 'frivas_dev@gmail.com', '7912-3456', '2026-06-26 01:14:38'),
(20, 'Karla', 'Benavides', 'kbenavides@mail.com', '7023-4567', '2026-06-26 01:14:38'),
(21, 'Roberto', 'Ayala', 'rayala.sv@gmail.com', '7145-6789', '2026-06-26 01:14:38'),
(22, 'Claudia', 'Solórzano', 'claudia.sol@outlook.com', '7256-7890', '2026-06-26 01:14:38'),
(23, 'Jorge', 'Meléndez', 'jorge.mtech@gmail.com', '7367-8901', '2026-06-26 01:14:38'),
(24, 'Sandra', 'Serrano', 'sserrano@yahoo.com', '7478-9012', '2026-06-26 01:14:38'),
(25, 'Héctor', 'Cortez', 'hcortez_gaming@gmail.com', '7589-0123', '2026-06-26 01:14:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `id_categoria` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_categoria`, `id_proveedor`) VALUES
(1, 'Mouse Logitech G502 HERO', 'Mouse Gamer con sensor HERO 25K, 16000 DPI', 59.99, 45, 1, 3),
(2, 'Teclado Razer BlackWidow V4', 'Teclado Mecánico con Switches Verdes, RGB Chroma', 129.99, 20, 2, 7),
(3, 'Headset HyperX Cloud Alpha', 'Audífonos Gamer con estructura de aluminio, color rojo', 89.50, 30, 3, 14),
(4, 'Monitor ASUS TUF VG249Q', 'Monitor Gamer de 24 pulgadas FHD, IPS, 144Hz, 1ms', 195.00, 15, 4, 6),
(5, 'Mousepad Redragon Taurus P018', 'Alfombrilla tamaño extendido XXL, costuras reforzadas', 18.00, 80, 5, 17),
(6, 'SSD Kingston NV2 1TB', 'Unidad de Estado Sólido M.2 PCIe 4.0 NVMe', 75.00, 60, 6, 5),
(7, 'Disco Duro Externo WD Elements 2TB', 'Disco portátil USB 3.0 para respaldo', 85.00, 25, 7, 10),
(8, 'Memoria RAM Corsair Vengeance 16GB', 'Módulo DDR4 3200MHz con disipador de aluminio', 48.00, 50, 8, 4),
(9, 'Tarjeta de Video MSI RTX 4060 Ventus', '8GB GDDR6, arquitectura Ada Lovelace', 399.00, 12, 9, 9),
(10, 'Procesador AMD Ryzen 5 5600X', '6 Núcleos, 12 Hilos, Reloj base 3.7GHz, Socket AM4', 165.00, 18, 10, 15),
(11, 'Tarjeta Madre Gigabyte B550M DS3H', 'Placa base Micro-ATX para procesadores Ryzen AM4', 115.00, 22, 11, 8),
(12, 'Fuente Corsair RM750e', 'Fuente de Poder Modular 750W 80 Plus Gold ATX 3.0', 119.99, 14, 12, 4),
(13, 'Gabinete Cooler Master TD500', 'Chasis Media Torre con 3 ventiladores ARGB incluidos', 95.00, 10, 13, 18),
(14, 'Refrigeración Líquida DeepCool LE520', 'Disipador AIO de 240mm con iluminación ARGB', 79.99, 15, 14, 20),
(15, 'Cable HDMI 2.1 Baseus 3 metros', 'Soporte para resoluciones 8K a 60Hz y 4K a 120Hz', 12.50, 100, 15, 1),
(16, 'Hub USB-C TP-Link UH400', 'Adaptador de 4 puertos USB 3.0 portátil', 19.99, 35, 16, 21),
(17, 'Cámara Web Logitech C920s', 'Webcam Full HD 1080p con tapa de privacidad integrada', 79.00, 28, 17, 3),
(18, 'Micrófono Razer Seiren Mini', 'Micrófono de condensador ultra compacto USB', 49.99, 20, 18, 7),
(19, 'Bocinas Logitech Z120', 'Altavoces estéreo compactos alimentados por puerto USB', 15.00, 40, 19, 3),
(20, 'Silla Gamer Cougar Armor One', 'Silla ergonómica reclinable, cuero sintético de PVC', 215.00, 8, 20, 19),
(21, 'Pasta Térmica Arctic MX-4 4g', 'Compuesto térmico de alto rendimiento para microprocesadores', 9.50, 120, 21, 2),
(22, 'Quemadora DVD Externa ASUS', 'Unidad portátil ultra delgada con soporte M-DISC', 35.00, 15, 22, 6),
(23, 'Aire Comprimido Maxell 400ml', 'Lata removedora de polvo para componentes electrónicos', 7.50, 150, 23, 1),
(24, 'Adaptador Wi-Fi USB TP-Link T3U', 'Antena inalámbrica AC1300 Doble Banda de alta ganancia', 24.50, 45, 24, 21),
(25, 'Soporte de Monitor Newell Dual', 'Brazo mecánico doble articulado con soporte VESA', 45.00, 14, 25, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `nombre_contacto` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_empresa`, `nombre_contacto`, `telefono`, `email`) VALUES
(1, 'Tech Distribution El Salvador', 'Carlos Mendoza', '2255-1234', 'ventas@techdist.com'),
(2, 'Macro Hardware Global', 'Ana María Gómez', '2511-5678', 'contacto@macrohardware.net'),
(3, 'Logitech Mayoristas S.A.', 'Roberto Flores', '7890-1122', 'rflores@logidist.com'),
(4, 'Corsair Rep. Centroamérica', 'Laura Benítez', '2133-4455', 'lbenitez@corsair-latam.com'),
(5, 'Kingston Tech Imports', 'Miguel Ángel Rivas', '7011-2233', 'mrivas@kingston-imports.sv'),
(6, 'Asus Elite Distributor', 'Gabriela Torres', '2644-8899', 'gtorres@asus-elite.com'),
(7, 'Razer Latam Supply', 'Jonathan Martínez', '7500-9988', 'jmartinez@razer-latam.com'),
(8, 'Gigabyte Express S.A.', 'Elena Quintanilla', '2288-7766', 'equintanilla@gigabyte-exp.com'),
(9, 'MSI Central America', 'Walter Alexander', '7233-4411', 'walexander@msi-ca.com'),
(10, 'Western Digital SV', 'Patricia Herrera', '2566-0011', 'pherrera@wd-sv.com'),
(11, 'Crucial Importaciones', 'Fernando Castro', '7100-5544', 'fcastro@crucial-imp.com'),
(12, 'Thermaltake Caribe', 'Sofía Henríquez', '2277-3322', 'shenriquez@tt-caribe.com'),
(13, 'EVGA Soluciones', 'Ricardo Alfaro', '2455-6677', 'ralfaro@evga-soluciones.com'),
(14, 'HyperX El Salvador', 'Vanessa Meléndez', '7911-8822', 'vmelendez@hyperx-sv.com'),
(15, 'AMD Regional Sales', 'Héctor Duarte', '2100-9900', 'hduarte@amd-regional.com'),
(16, 'Intel Components Corp', 'Diana Carolina', '2311-2244', 'dcarolina@intel-comp.com'),
(17, 'Redragon Central', 'Manuel Calderón', '7644-5511', 'mcalderon@redragon-central.com'),
(18, 'Cooler Master Mayoristas', 'Beatriz Peña', '2544-7733', 'bpena@cm-mayoristas.com'),
(19, 'Cougar Hardware Latam', 'Francisco Orellana', '7088-1122', 'forellana@cougar-latam.com'),
(20, 'DeepCool Mayoristas', 'Karla Vásquez', '2211-8899', 'kvasquez@deepcool-may.com'),
(21, 'TP-Link Conectividad', 'Jorge Alberto', '2688-4455', 'jalberto@tplink-con.com'),
(22, 'BenQ Displays SV', 'Marta Alicia', '7511-3366', 'malicia@benq-displays.com'),
(23, 'Seagate Storage Latam', 'Mauricio Tobar', '2122-6677', 'mtobar@seagate-storage.com'),
(24, 'Adata XPG El Salvador', 'Claudia Fuentes', '7344-9988', 'cfuentes@adata-xpg.com'),
(25, 'Newell Ergonomics', 'Oscar Armando', '2233-4499', 'oarmando@newell-ergo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_venta` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `fecha_venta`, `total`) VALUES
(1, 1, '2026-06-10 16:30:00', 77.99),
(2, 2, '2026-06-11 17:15:00', 129.99),
(3, 3, '2026-06-11 20:00:00', 284.50),
(4, 4, '2026-06-12 15:45:00', 18.00),
(5, 5, '2026-06-17 22:20:00', 123.00),
(6, 6, '2026-06-19 18:00:00', 399.00),
(7, 7, '2026-06-19 21:10:00', 280.00),
(8, 8, '2026-06-19 16:05:00', 119.99),
(9, 9, '2026-06-19 23:30:00', 174.99),
(10, 10, '2026-06-19 17:40:00', 12.50),
(11, 11, '2026-06-22 20:15:00', 128.99),
(12, 12, '2026-06-22 19:00:00', 15.00),
(13, 13, '2026-06-22 15:15:00', 215.00),
(14, 14, '2026-06-22 22:45:00', 19.00),
(15, 15, '2026-06-22 16:22:00', 59.99),
(16, 16, '2026-06-24 17:50:00', 195.00),
(17, 17, '2026-06-24 21:35:00', 96.00),
(18, 18, '2026-06-22 20:10:00', 49.99),
(19, 19, '2026-06-22 18:25:00', 70.00),
(20, 20, '2026-06-23 22:00:00', 7.50),
(21, 21, '2026-06-24 15:30:00', 24.50),
(22, 22, '2026-06-24 17:00:00', 90.00),
(23, 23, '2026-06-25 16:00:00', 165.00),
(24, 24, '2026-06-25 17:15:00', 115.00),
(25, 25, '2026-06-25 20:20:00', 119.99);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
