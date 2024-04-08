package ru.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ru.itis.entity.Serial;
import ru.itis.service.SerialService;

import java.util.List;

@RestController
public class SerialController {

    @Autowired
    private SerialService serialService;

    @GetMapping("/")
    public String getPage() {
        return "Serial:";
    }

    @GetMapping("/serials")
    public List<Serial> getSerials() {
        return serialService.getSerials();
    }

    @PostMapping("/save-serials")
    public void saveSerial(@RequestBody Serial serial) {
        serialService.saveSerial(serial);
    }

    @PutMapping("/update/{serialId}")
    public void updateSerial(@PathVariable Long serialId, Serial serial) {
        Serial updatedSerial = serialService.findSerialById(serialId);
        updatedSerial.setName(serial.getName());
        updatedSerial.setDescription(serial.getDescription());
        serialService.saveSerial(updatedSerial);
    }

    @DeleteMapping("/delete/{serialId}")
    public String deleteSerial(@PathVariable Long serialId) {
        serialService.deleteSerial(serialId);
        return "delete";
    }
}
