class LenovoManufacturer implements Computer {
    @Override
    public CPU createCPU() {
        return new CPU("Lenovo CPU");
    }

    @Override
    public GPU createGPU() {
        return new GPU("Lenovo GBU");
    }

    @Override
    public MB createMB() {
        return new MB("Lenovo MB");
    }

    @Override
    public Monitor createMonitor() {
        return new Monitor("Lenovo Monitor");
    }
}
