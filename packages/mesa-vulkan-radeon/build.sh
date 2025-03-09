PKG_VER=25.0.0
PKG_CATEGORY="VulkanDriver"
PKG_PRETTY_NAME="Mesa Radeon Driver"
VK_DRIVER_LIB="libvulkan_radeon.so"

BLACKLIST_ARCHITECTURE=aarch64

SRC_URL=https://archive.mesa3d.org/mesa-$PKG_VER.tar.xz
LDFLAGS="-L$PREFIX/lib -landroid-shmem"
CPPFLAGS="-D__USE_GNU"
MESON_ARGS="-Dgallium-drivers= -Dvulkan-drivers=amd -Dglvnd=disabled -Dplatforms=x11 -Dxmlconfig=enabled -Dllvm=disabled -Dopengl=false -Degl=disabled -Dzstd=enabled"
