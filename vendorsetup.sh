echo 'Starting to clone stuffs needed to build for garnet'

# Agm
echo 'Cloning Agm'
rm -rf hardware/qcom-caf/sm8450/audio/agm && git clone https://github.com/xiaomi-sm8450-marble/android_vendor_qcom_opensource_agm -b 15 hardware/qcom-caf/sm8450/audio/agm

# Graphservices
echo 'Cloning Graphservices'
rm -rf hardware/qcom-caf/sm8450/audio/graphservices && git clone https://github.com/DqrKnzx/android_vendor_qcom_opensource_audioreach-graphservices hardware/qcom-caf/sm8450/audio/graphservices

# Pal
echo 'Cloning Pal'
rm -rf hardware/qcom-caf/sm8450/audio/pal && git clone https://github.com/unmoved21/android_vendor_qcom_opensource_arpal-lx -b lineage-22.2-caf-sm8450 hardware/qcom-caf/sm8450/audio/pal

# Device Tree
echo 'Cloning Device Tree'
git clone https://github.com/solstxce/android_device_xiaomi_garnet -b horizon device/xiaomi/garnet

# Vendor Tree
echo 'Cloning Vendor Tree'
git clone https://github.com/crdroidandroid/proprietary_vendor_xiaomi_garnet vendor/xiaomi/garnet

# Kernel
echo 'Cloning Kernel'
git clone https://github.com/crdroidandroid/android_xiaomi_kernel_garnet device/xiaomi/garnet-prebuilt

# Hardware
echo 'Cloning Hardware'
git clone https://github.com/MySelly/android_hardware_xiaomi_garnet -b lineage-22.2 hardware/xiaomi

# Hardware Dolby
echo 'Cloning Hardware Dolby'
git clone https://github.com/MySelly/android_hardware_dolby hardware/dolby

# Display
echo 'Cloning Display'
rm -rf hardware/qcom-caf/sm8450/display && git clone https://github.com/aosp-garnet/hardware_qcom-caf_sm8450_display -b 15 hardware/qcom-caf/sm8450/display

# Mi Camera
echo 'Cloning Mi Camera'
git clone https://github.com/stuff-garnet/vendor_xiaomi_miuicamera-garnet vendor/xiaomi/miuicamera-garnet && git clone https://github.com/stuff-garnet/device_xiaomi_miuicamera-garnet device/xiaomi/miuicamera-garnet 

# Sign Method
echo 'Cloning sign method. If u want to sign run this: ./create-signed-env.sh'
wget https://raw.githubusercontent.com/306bobby-android/crDroid-build-signed-script/main/create-signed-env.sh && chmod +x create-signed-env.sh

echo 'Cloning process is completed, now its time for lunch'