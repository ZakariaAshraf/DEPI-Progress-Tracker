class ToshibaManufacturer implements Computer {
    @Override
    public CPU createCPU() {
        return new CPU("Toshiba CPU");
    }

    @Override
    public GPU createGPU() {
        return new GPU("Toshiba GPU");
    }

    @Override
    public MB createMB() {
        return new MB("Toshiba MB");
    }

    @Override
    public Monitor createMonitor() {
        return new Monitor("Toshiba Monitor");
    }
}
