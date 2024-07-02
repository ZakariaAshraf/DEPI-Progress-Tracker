class DellManufacturer implements Computer {
    @Override
    public CPU createCPU() {
        return new CPU("Dell CPU");
    }

    @Override
    public GPU createGPU() {
        return new GPU("Dell GPU");
    }

    @Override
    public MB createMB() {
        return new MB("Dell MB");
    }

    @Override
    public Monitor createMonitor() {
        return new Monitor("Dell Monitor");
    }
}
