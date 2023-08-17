package com.nickgonzalez.HighSpeedRail.annotations;

import com.nickgonzalez.HighSpeedRail.dao.TrainRepository;
import com.nickgonzalez.HighSpeedRail.entity.Route;
import com.nickgonzalez.HighSpeedRail.entity.Train;
import com.nickgonzalez.HighSpeedRail.pojo.Trip;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UniqueRouteValidator implements ConstraintValidator<UniqueRouteValidation, List<Integer>> {
    @Autowired
    private TrainRepository trainRepository;
    @Override
    public boolean isValid(List<Integer> trainIds, ConstraintValidatorContext cxt) {
        Set<Route> uniqueRoutes = new HashSet<>();
        for (int trainId : trainIds) {
            Train train = trainRepository.findTrainById(trainId);
            if (train == null) {
                return false;
            }
            Route route = train.getRoute();
            if (uniqueRoutes.contains(route)) {
                return false;
            }
            uniqueRoutes.add(route);
        }
        return true;
    }
}
