package ru.itis.service;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import ru.itis.entity.Serial;
import ru.itis.repository.SerialRepository;

import java.util.List;
import java.util.Optional;

@Service
public class SerialService {

    private final SerialRepository serialRepository;

    public SerialService(SerialRepository serialRepository) {
        this.serialRepository = serialRepository;
    }

    public List<Serial> getSerials() {
        return serialRepository.findAllSerials();
    }

    public void saveSerial(Serial serial) {
        serialRepository.save(serial);
    }

    public Serial findSerialById(Long serialId) {
        Optional<Serial> serial = serialRepository.findById(serialId);
        return serial.orElse(new Serial());
    }

    public void deleteSerial(Long serialId) {
        serialRepository.deleteById(serialId);
    }
}
